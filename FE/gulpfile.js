var { dest, watch } = require("gulp");
var glob = require("glob");
var babelify = require("babelify");
var browserify = require("browserify");
var source = require("vinyl-source-stream");

function buildTask() {
    return browserify({
        entries: glob.sync("src/*.js?")
    })
    .transform(babelify)
    .bundle()
    .on("error", (err) => {
        console.log(err);
    })
    .pipe(source("app.js"))
    .pipe(dest("dest/js"));
}

function devTask(){
    watch("src/*.js?", {
        usePolling: true
        ,interval: 3500
    }, buildTask);
}

exports.build = buildTask;

exports.dev = devTask;