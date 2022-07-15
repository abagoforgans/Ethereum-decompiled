contract main {




// =====================  Runtime code  =====================


mapping of struct contract;
array of struct stor1;

function getContract(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return contract[arg1].field_256
}

function _fallback() payable {
    revert
}

function issue(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    contract[arg1].field_0 = msg.sender
    contract[arg1].field_256 = arg1
    stor1.length++
    stor1[stor1.length].field_0 = contract[arg1].field_0
    stor1[stor1.length].field_256 = contract[arg1].field_256
}



}
