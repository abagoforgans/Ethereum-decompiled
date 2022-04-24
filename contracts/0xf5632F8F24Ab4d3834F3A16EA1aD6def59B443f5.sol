contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[51 len 981]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint256 transfers;
address depositAddress;

function depositAddress() {
    return depositAddress
}

function owner() {
    return owner
}

function transfers(address arg1) {
    return transfers[arg1]
}

function newOwner() {
    return newOwner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setDepositAddress(address arg1) {
    require owner == msg.sender
    depositAddress = arg1
}

function withdrawEther(address arg1) {
    require owner == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value > 0
    if depositAddress != msg.sender:
        transfers[address(msg.sender)] = msg.value
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit RefundTransfer(block.timestamp, msg.value, msg.value, msg.sender);
}



}
