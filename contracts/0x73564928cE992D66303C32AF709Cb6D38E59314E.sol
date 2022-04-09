contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;

function _fallback() {
    stor0 = msg.sender
    stor2 = block.timestamp
    stor4 = 0
    stor3 = code.data[1422 len 32]
    stor1 = code.data[1402 len 20]
    return code.data[123 len 1267]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address recipientAddress;
uint256 createdAt;
uint256 sub_be6bdf83;
uint8 stor4;

function ended() {
    return bool(stor4)
}

function recipient() {
    return recipientAddress
}

function owner() {
    return owner
}

function sub_be6bdf83(?) {
    return sub_be6bdf83
}

function createdAt() {
    return createdAt
}

function selfDestruct() {
    require owner == msg.sender
    emit 0x85369a99: owner, eth.balance(this.address)
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function contribute() payable {
    require not stor4
    require block.timestamp <= createdAt + sub_be6bdf83
    emit ContributionReceived(msg.sender, msg.value);
}

function timeRemaining() {
    if not stor4:
        if block.timestamp <= createdAt + sub_be6bdf83:
            return (createdAt + sub_be6bdf83 - block.timestamp)
        else:
            return 0
    else:
        return 0
}

function refund() {
    require owner == msg.sender
    require not stor4
    require block.timestamp <= createdAt + sub_be6bdf83
    emit Refunded(owner, eth.balance(this.address));
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function claim() {
    require not stor4
    require block.timestamp > createdAt + sub_be6bdf83
    stor4 = 1
    emit 0xeca3228e: recipientAddress, eth.balance(this.address)
    call recipientAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
