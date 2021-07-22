const express = require('express');
const route = express.Router();
const mysql = require('mysql');
const moment = require('moment')

// database conf
var pool = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'sts'
})

route.get('/student', (req, res) => {
    let sql = "select * from user where id=?";
    let params = [req.query.id];

    pool.getConnection(function (err, connection) {
        if (err) throw err;
        connection.query(sql, params, function (error, results, fields) {
            connection.release()

            res.render('edit', {
                res: results
            })

            if (error) throw error;

        });
    })
})

route.get('/students', (req, res) => {
    // database query
    let sql = "select * from user where 1=1";
    let params = [];

    if (req.query.username) {
        sql += " and username like ?"
        params.push("%" + req.query.username + "%")
    }

    pool.getConnection(function (err, connection) {
        if (err) throw err;
        connection.query(sql, params, function (error, results, fields) {
            connection.release()

            // 将查询结果传入到ejs进行渲染
            res.render('students', {
                res: results,
                moment: moment,
                searchname: req.query.username ? req.query.username : ''
            })

            if (error) throw error;
        })
    });
})

route.get('/student/delete', (req, res) => {
    let sql = "delete from user where id=?";
    let params = [req.query.id];


    pool.getConnection(function (err, connection) {
        if (err) throw err;
        connection.query(sql, params, function (error, results, fields) {
            connection.release()

            res.json({
                status: 1
            })

            if (error) throw error;
        })
    });
})

route.get('/student/update', (req, res) => {
    let sql = `update user set first_name=?, last_name=?, email=?, phone=?, address=? where id=?`;
    let params = [];
    params.push(req.query.firstname);
    params.push(req.query.lastname);
    params.push(req.query.email);
    params.push(req.query.phone);
    params.push(req.query.address);
    params.push(req.query.id);

    pool.getConnection(function (err, connection) {
        if (err) throw err;
        connection.query(sql, params, function (error, results, fields) {
            connection.release()

            console.log(results);
            res.redirect('/students');

            if (error) throw error;
        })
    });
})

route.get('/add', (req, res)=>{
    res.render('add')
})

route.get('/student/add', (req, res) => {
    let sql = `insert into user(first_name, last_name, email, phone, address) values(?, ?, ?, ?, ?)`;
    let params = [];
    params.push(req.query.firstname);
    params.push(req.query.lastname);
    params.push(req.query.email);
    params.push(req.query.phone);
    params.push(req.query.address);

    pool.getConnection(function (err, connection) {
        if (err) throw err;
        connection.query(sql, params, function (error, results, fields) {
            connection.release()

            res.redirect('/students');

            if (error) throw error;
        })
    });
})

module.exports = route;