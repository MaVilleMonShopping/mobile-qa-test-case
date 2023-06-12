const specs = [
    // Dumb
    "./tests/specs/dummy.e2e.js"
];


function listForRunMultipleTimes(times) {
    let _specs = [];
    for(let i = 1; i <= times; i++){
        _specs = _specs.concat(specs);
    }
    return _specs;
}

module.exports = {
    specs: specs,
    multipleRunSpecs: listForRunMultipleTimes,
}