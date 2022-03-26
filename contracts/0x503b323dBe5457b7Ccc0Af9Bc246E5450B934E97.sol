contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = msg.sender
    stor4 = 3 * 10^16
    require not msg.value
    return code.data[157 len 3606]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 address;
address delegateAddress;
mapping of uint256 stor3;
uint256 fee;

function getAddress(address arg1, string arg2) {
    return address(address[address(arg1)][1][arg2[all]])
}

function owner() {
    return owner
}

function delegate() {
    return delegateAddress
}

function getUint(address arg1, string arg2) {
    return uint256(address[address(arg1)][1][arg2[all]])
}

function certified(address arg1) {
    return bool(uint8(address[address(arg1)]))
}

function fee() {
    return fee
}

function get(address arg1, string arg2) {
    return uint256(address[address(arg1)][1][arg2[all]])
}

function _fallback() payable {
    revert 
}

function setFee(uint256 arg1) {
    if msg.sender == owner:
        fee = arg1
}

function setDelegate(address arg1) {
    if msg.sender == owner:
        delegateAddress = arg1
}

function setOwner(address arg1) {
    if msg.sender == owner:
        emit NewOwner(owner, arg1);
        owner = arg1
}

function certify(address arg1) {
    if msg.sender == delegateAddress:
        uint8(address[address(arg1)]) = 1
        emit Confirmed(arg1);
}

function request() payable {
    if msg.value >= fee:
        if not uint8(address[address(msg.sender)]):
            emit Requested(msg.sender);
}

function puzzle(address arg1, bytes32 arg2) {
    if msg.sender == delegateAddress:
        stor3[address(arg1)] = arg2
        emit Puzzled(arg2, arg1);
}

function drain() {
    if owner != msg.sender:
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function revoke(address arg1) {
    if msg.sender == delegateAddress:
        if uint8(address[address(arg1)]):
            uint8(address[address(arg1)]) = 0
            emit Revoked(arg1);
}

function confirm(bytes32 arg1) {
    if stor3[address(msg.sender)] != sha3(arg1):
        return 0
    stor3[address(msg.sender)] = 0
    uint8(address[address(msg.sender)]) = 1
    emit Confirmed(msg.sender);
    return 1
}



}
