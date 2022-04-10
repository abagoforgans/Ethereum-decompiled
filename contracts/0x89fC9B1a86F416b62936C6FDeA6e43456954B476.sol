contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    require not msg.value
    stor2 = msg.sender
    return code.data[105 len 1364]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    revert
}

function collectFees() {
    call stor2 with:
       value stor3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor3 = 0
}

function addBountyReward(uint256 arg1) payable {
    require not stor0[arg1].field_512
    require stor0[arg1].field_0
    stor0[arg1].field_256 += msg.value
}

function setBounty(bytes32 arg1) payable {
    require msg.value >= 10^15
    stor3 += 10^15
    stor1++
    stor0[stor1].field_0 = arg1
    stor0[stor1].field_256 = msg.value - 10^15
    stor0[stor1].field_512 = 0
    return (stor1 - 1)
}

function claimBounty(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    hash = sha256hash(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) 
    require sha256hash.result
    require stor0[arg1].field_0 == hash
    mem[ceil32(arg2.length) + 128] = msg.sender
    mem[ceil32(arg2.length) + 192] = stor0[arg1].field_0
    mem[ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg2.length) + 224] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 256] = mem[128]
        mem[ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit HashSolved(msg.sender, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 256 len arg2.length]), stor0[arg1].field_0);
    stor0[arg1].field_512 = 1
    call msg.sender with:
       value stor0[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
