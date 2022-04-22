contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[2760 len 32]
    return code.data[130 len 2630]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor2;
array of uint256 stor99;

function owner() {
    return owner
}

function getParameter(string arg1) {
    return stor[_36][0 len stor[_36].length]
}

function _fallback() payable {
    revert
}

function setTTL(uint256 arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setIPFSParameter(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 96
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    emit ParameterSet(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 96);
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
    emit HashAdded(address(this.address), Array(len=arg2.length, data=arg2[all]), stor2);
}

function setParameter(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 96
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit ParameterSet(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 96);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit ParameterSet(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 96);
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
}



}
