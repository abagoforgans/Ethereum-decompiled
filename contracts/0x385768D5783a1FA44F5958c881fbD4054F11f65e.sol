contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of struct stor3;
mapping of uint256 stor258;

function _fallback() {
    mem[96 len 128] = code.data[1442 len 128]
    stor1 = 3
    idx = 0
    while idx < 3:
        require idx + 1 < 256
        stor3[idx].field_0 = mem[(32 * idx) + 108 len 20]
        stor3[idx].field_160 = 0
        require idx < 3
        mem[0] = mem[(32 * idx) + 108 len 20]
        mem[32] = 258
        stor258[mem[(32 * idx) + 108 len 20]] = idx + 1
        idx = idx + 1
        continue 
    stor0 = code.data[1538 len 32]
    return code.data[249 len 1193]
}



// =====================  Runtime code  =====================


uint256 m_required;
uint256 ownerCount;
array of address owner;
mapping of uint256 stor258;
mapping of struct stor259;

function getRequired() {
    return m_required
}

function m_numOwners() {
    return ownerCount
}

function m_required() {
    return m_required
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function getOwnerCount() {
    return ownerCount
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (stor258[address(arg1)] > 0)
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor258[address(arg2)]:
        return not not stor259[arg1].field_256 and 2^stor258[address(arg2)]
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor258[address(msg.sender)]:
        if stor259[arg1].field_256 and 2^stor258[address(msg.sender)] > 0:
            stor259[arg1].field_0++
            stor259[arg1].field_256 -= 2^stor258[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}



}
