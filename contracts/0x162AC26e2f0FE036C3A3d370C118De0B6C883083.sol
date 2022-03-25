contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint8 stor2;
array of uint256 stor3;

function _fallback() payable {
    mem[96 len -1015] = code.data[1334 len -1015]
    mem[64] = -919
    if 0 == mem[mem[96] + 96]:
        selfdestruct(msg.sender)
    if not mem[128]:
        selfdestruct(msg.sender)
    if mem[128] > mem[mem[96] + 96]:
        selfdestruct(msg.sender)
    stor1 = mem[128]
    idx = 0
    while idx < mem[mem[96] + 96]:
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            s = stor3.length + sha3(3) + 1
            while sha3(3) + stor3.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        require idx < mem[mem[96] + 96]
        stor3[stor3.length] = mem[(32 * idx) + mem[96] + 128]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[mem[96] + (32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return code.data[319 len 1015]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 required;
mapping of uint8 stor2;
array of address owners;
uint256 totalRaised;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1]
}

function n() {
    return required
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function m() {
    return owners.length
}

function hasConfirmed(bytes32 arg1, address arg2) {
    return bool(stor0[arg1][address(arg2)].field_0)
}

function totalRaised() {
    return totalRaised
}

function required() {
    return required
}

function _fallback() payable {
    require totalRaised + msg.value <= 833000 * 10^18
    totalRaised += msg.value
}

function send(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    require not stor0[call.data[0 len calldata.size]][address(msg.sender)].field_0
    if not stor0[call.data[0 len calldata.size]].field_256:
        stor0[call.data[0 len calldata.size]].field_256 = required
    if stor0[call.data[0 len calldata.size]].field_256 > 1:
        emit Confirmation(0, msg.sender, sha3(call.data[0 len calldata.size]));
        stor0[call.data[0 len calldata.size]].field_256--
        stor0[call.data[0 len calldata.size]][address(msg.sender)].field_0 = 1
        return 0
    emit Confirmation(1, msg.sender, sha3(call.data[0 len calldata.size]));
    idx = 0
    while idx < owners.length:
        mem[0] = owners[idx]
        mem[32] = sha3(sha3(call.data[0 len calldata.size]), 0)
        if stor0[call.data[0 len calldata.size]][stor3[idx]].field_0:
            require idx < owners.length
            mem[0] = owners[idx]
            mem[32] = sha3(sha3(call.data[0 len calldata.size]), 0)
            stor0[call.data[0 len calldata.size]][stor3[idx]].field_0 = 0
        idx = idx + 1
        continue 
    stor0[call.data[0 len calldata.size]].field_256 = 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}



}
