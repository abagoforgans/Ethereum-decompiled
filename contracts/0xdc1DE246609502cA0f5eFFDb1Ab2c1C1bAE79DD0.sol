contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 10^18
    require not msg.value
    return code.data[105 len 3325]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
uint256 price;
mapping of uint256 sub_366390ad;
mapping of uint256 hashID;
mapping of uint256 stor5;
mapping of address stor6;

function sub_366390ad(?) {
    return sub_366390ad[arg1][arg2]
}

function wallet() {
    return walletAddress
}

function getVerifiedHashID(address arg1, bytes32 arg2) {
    return sub_366390ad[address(arg1)][arg2]
}

function owner() {
    return owner
}

function price() {
    return price
}

function getHashID(address arg1, bytes32 arg2) {
    return hashID[address(arg1)][arg2]
}

function _fallback() payable {
    revert
}

function bringuPort(address arg1) {
    stor6[address(msg.sender)] = arg1
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function revokeMyId(bytes32 arg1) {
    sub_366390ad[address(msg.sender)][arg1] = 0
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
}

function revoke(bytes32 arg1, address arg2) {
    require owner == msg.sender
    sub_366390ad[address(arg2)][arg1] = 0
}

function verifyIdentity(address arg1, bytes32 arg2, uint256 arg3) {
    return (sub_366390ad[address(arg1)][arg2] == arg3)
}

function setCode(address arg1, bytes32 arg2, uint256 arg3) {
    require owner == msg.sender
    stor5[address(arg1)][arg2] = arg3
}

function claimIFactor(bytes32 arg1, uint256 arg2) payable {
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    hashID[address(msg.sender)][arg1] = arg2
    emit Registered(arg2);
}

function sub_7aa51e21(?) {
    if stor5[address(msg.sender)][arg1] != arg2 % 10^6 * arg2 / 10^6:
        return 0
    sub_366390ad[address(msg.sender)][arg1] = hashID[address(msg.sender)][arg1]
    sub_366390ad[address(msg.sender)]['email'] = hashID[address(msg.sender)][arg1]
    emit Verified(hashID[address(msg.sender)][arg1]);
    return 1
}



}
