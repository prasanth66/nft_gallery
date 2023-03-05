module.exports = {
    moduleDirectories: ["node_modules", "<rootDir>"],
    rootDir: "../",
    setupFilesAfterEnv: ["./config/jest.setup.js"],
    transform: {
        "\\.js$": ["babel-jest", { configFile: "./config/.babelrc" }],
    },
    moduleNameMapper: {
        "\\.(css|less|scss|sss|styl)$": "<rootDir>/node_modules/jest-css-modules",
    },
    verbose: true,
    collectCoverage: true,
    testEnvironment: "jsdom",
    coveragePathIgnorePatterns: ["<rootDir>/test/test-utils.js"],
};
