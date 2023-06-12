const find = require("appium-flutter-finder");
const { step } = require("mocha-steps");
require("should");

describe("Dummy", async () => {
    step("Should be dumb", async() => {
        console.log("Running dummy test");
        const isThisTestDumb = true;
        isThisTestDumb.should.be.true();
    });
});