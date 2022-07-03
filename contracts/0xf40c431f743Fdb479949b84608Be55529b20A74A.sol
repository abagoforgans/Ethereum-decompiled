contract main {




// =====================  Runtime code  =====================


address owner;
uint256 feeValue;
address stor2;
uint256 stor3;
array of struct stor4;

function owner() {
    return owner
}

function feeValue() {
    return feeValue
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    require eth.balance(this.address) > 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7fa7963d(?) {
    require ext_code.size(stor2)
    call stor2.addressOf(string arg1) with:
         gas gas_remaining wei
        args Array(len=7, data='AuthMgr')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isAuth(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 != feeValue
    feeValue = arg1
}

function sub_254ee78d(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.value >= feeValue
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    stor4.length++
    stor4[stor4.length].field_0 = msg.sender
    stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor4[stor4.length].field_768 = block.timestamp
    stor4[stor4.length].field_1024 = msg.value
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 512] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x50ae8665: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 512 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 192, block.timestamp, msg.value, stor3, msg.sender
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
        emit 0x50ae8665: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 512 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 192, block.timestamp, msg.value, stor3, msg.sender
    stor3++
}

function sub_d64d79d0(?) {
    require arg1 < stor4.length
    mem[96] = stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length
    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 1)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 160
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + 128] = stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length
    mem[0] = (5 * arg1) + sha3(4) + 2
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + 160] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_0
    idx = ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + 160
    s = 0
    while ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 160] = stor4[arg1].field_0
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 256] = stor4[arg1].field_768
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 288] = stor4[arg1].field_1024
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 192] = 160
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 320] = stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 352 len ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length)] = mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length)]
    mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 224] = stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + 192
    mem[stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 352] = stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length
    mem[stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 384 len ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length)] = mem[ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + 160 len ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length)]
    if not stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length % 32:
        return stor4[arg1].field_0, 
               Array(len=stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 352 len stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length + stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + 32]),
               stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + 192,
               stor4[arg1].field_768,
               stor4[arg1].field_1024
    mem[floor32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 384] = mem[floor32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + -stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length % 32 + 416 len stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length % 32]
    return stor4[arg1].field_0, 
           Array(len=stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length)], mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + 352 len floor32(stor[(5 * arg1) + ('name', 'stor4', 4) + 2].length) + stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + -ceil32(stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length) + 64]),
           stor[(5 * arg1) + ('name', 'stor4', 4) + 1].length + 192,
           stor4[arg1].field_768,
           stor4[arg1].field_1024
}



}
