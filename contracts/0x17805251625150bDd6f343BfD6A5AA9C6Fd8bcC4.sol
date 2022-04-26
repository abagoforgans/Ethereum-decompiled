contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
array of uint256 stor3;

function _fallback() payable {
    mem[96 len -1321] = code.data[1728 len -1321]
    mem[64] = -1225
    stor0 = mem[108 len 20]
    stor1 = mem[140 len 20]
    stor2 = mem[160]
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[407 len 1321]
}



// =====================  Runtime code  =====================


address gifterAddress;
address recipientAddress;
uint256 lockTs;
array of uint256 giftMessage;

function gifter() {
    return gifterAddress
}

function recipient() {
    return recipientAddress
}

function lockTs() {
    return lockTs
}

function giftMessage() {
    return giftMessage[0 len giftMessage.length]
}

function _fallback() payable {
    revert
}

function changeRecipient(address arg1) {
    require msg.sender == recipientAddress
    emit RecipientChanged(recipientAddress, arg1);
    recipientAddress = arg1
}

function withdraw() {
    require msg.sender == recipientAddress
    require block.timestamp >= lockTs
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
