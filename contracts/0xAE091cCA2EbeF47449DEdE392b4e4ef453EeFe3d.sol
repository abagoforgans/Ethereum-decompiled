contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[750 len 32]
    stor1 = code.data[782 len 32]
    return code.data[112 len 638]
}



// =====================  Runtime code  =====================


address recipientAddress;
uint256 birthday;

function birthday() payable {
    return birthday
}

function recipient() payable {
    return recipientAddress
}

function _fallback() payable {
    require block.timestamp < birthday
}

function Take() payable {
    require msg.sender == recipientAddress
    require block.timestamp >= birthday
    emit HappyBirthday(recipientAddress, eth.balance(this.address));
    call recipientAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}



}
