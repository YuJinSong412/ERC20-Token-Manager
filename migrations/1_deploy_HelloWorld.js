const helloWorld = artifacts.require("HelloWorld");
// build 디렉토리 안의 HelloWorld.json 파일 가져옴
 
module.exports = function (deployer) {
  deployer.deploy(helloWorld);
  
};