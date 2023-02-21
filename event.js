let contract_abi = abi_json ;
let EventTest = web3.eth.contract(contract_abi);
let EventTestContract = ClientReceipt.at("0x98...");

EventTestContract.transfer(function(err, data) {
   if (!err)
   console.log(data);
});
