contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor4;
uint256 stor5;
mapping of uint8 stor7;

function _fallback() {
    stor0 = msg.sender
    stor4 = code.data[3503 len 32]
    stor5 = code.data[3535 len 32]
    stor3 = code.data[3579 len 20]
    stor7[code.data[3611 len 20]] = 1
    return code.data[320 len 3183]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 collectedEthers;
address etherHolderAddress;
uint256 startTime;
uint256 endTime;
mapping of uint256 stor6;
mapping of uint8 stor7;
mapping of uint256 stor99;

function collectedEthers() {
    return collectedEthers
}

function endTime() {
    return endTime
}

function etherHolder() {
    return etherHolderAddress
}

function allowedMultivests(address arg1) {
    return bool(stor7[arg1])
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function setAllowedMultivest(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 1
}

function unsetAllowedMultivest(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function verify(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    mem[192 len 0] = None
    signer = erecover(sha3(mem[192 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    require erecover.result
    return address(signer)
}

function sub_2e73ac57(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 6
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_49ffebab(?) payable {
    mem[96 len arg5.length] = arg5[all]
    require arg1 == sha3(arg5[all])
    mem[192 len 0] = None
    signer = erecover(sha3(mem[192 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    require erecover.result
    require bool(stor7[address(signer)]) == 1
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    stor6[arg5[all]] += msg.value
    collectedEthers += msg.value
    call etherHolderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x224daeba: msg.sender, Array(len=arg5.length, data=arg5[all]), msg.value
}



}
