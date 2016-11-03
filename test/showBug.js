contract('Solidity bug', function(accounts) {

    it('should pass',function(){
        var solidityBug = SolidityBug.deployed();
        return solidityBug.shouldReturn_1().then(function(one){
            assert.equal(1,one,"#1: 1 expected");
        });
    });

});
