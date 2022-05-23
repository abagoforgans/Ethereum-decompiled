contract main {




// =====================  Runtime code  =====================


address owner;
address tokenContractAddress;
mapping of struct goods;

function tokenContract() {
    return tokenContractAddress
}

function getGoodPreset(bytes32 arg1) {
    return goods[arg1].field_0
}

function owner() {
    return owner
}

function goods(bytes32 arg1) {
    return goods[arg1].field_0, goods[arg1].field_256, goods[arg1].field_512, goods[arg1].field_768
}

function getGoodPrice(bytes32 arg1) {
    return goods[arg1].field_256
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function transfertokenContract(address arg1) {
    require msg.sender == owner
    if arg1:
        tokenContractAddress = arg1
}

function setGood(bytes32 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender == tokenContractAddress
    goods[arg1].field_0 = arg1
    goods[arg1].field_256 = arg2
    goods[arg1].field_512 = arg3
    goods[arg1].field_768 = block.timestamp
}



}
