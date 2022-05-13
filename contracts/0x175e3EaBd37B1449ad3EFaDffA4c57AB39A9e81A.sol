contract main {




// =====================  Runtime code  =====================


address owner;
uint256 decimals;
mapping of uint8 stor2;
array of uint256 sub_41955214;
mapping of uint256 sub_5eedf3d7;
address sub_0baeb69aAddress;
mapping of uint8 stor6;
mapping of struct read;

function sub_0baeb69a(?) {
    return sub_0baeb69aAddress
}

function sub_27ceac0c(?) {
    require stor6[address(msg.sender)]
    require stor2[arg1]
    return read[arg1].field_0, read[arg1].field_256
}

function decimals() {
    return decimals
}

function sub_41955214(?) {
    return sub_41955214[arg1][0 len sub_41955214[arg1].length]
}

function sub_5eedf3d7(?) {
    return sub_5eedf3d7[arg1]
}

function read(bytes32 arg1) payable {
    require stor2[arg1]
    require msg.value == sub_5eedf3d7[arg1]
    return read[arg1].field_0, read[arg1].field_256
}

function markets(bytes32 arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function sub_b3590f8c(?) {
    return bool(stor6[address(msg.sender)])
}

function sub_f4463db5(?) {
    return bool(stor2[arg1])
}

function _fallback() {
    revert
}

function sub_0e7ac508(?) {
    return (arg2 == sub_5eedf3d7[arg1])
}

function sub_80957015(?) {
    return (msg.sender == sub_0baeb69aAddress)
}

function sub_383459dc(?) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function sub_3f5e3868(?) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
}

function sub_44a67006(?) {
    require msg.sender == owner
    sub_5eedf3d7[arg1] = arg2
}

function sub_e649d78c(?) {
    require msg.sender == owner
    stor6[stor5] = 0
    sub_0baeb69aAddress = arg1
    stor6[stor5] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_92f4b0b3(?) {
    require msg.sender == sub_0baeb69aAddress
    require stor2[arg1]
    read[arg1].field_0 = arg2
    read[arg1].field_256 = arg3
    emit 0x62a9ea16: arg2, arg1, arg3
}

function sub_5c5212dd(?) {
    require msg.sender == owner
    require stor2[arg1]
    stor2[arg1] = 0
    read[arg1].field_0 = 0
    read[arg1].field_256 = 0
    sub_5eedf3d7[arg1] = 0
    emit 0x1de4d777: arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_969419fe(?) {
    require msg.sender == owner
    stor2[call.data[cd[4] + 36 len ('cd', 4).length]] = 1
    sub_41955214[call.data[cd[4] + 36 len ('cd', 4).length]] = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_41955214[call.data[cd[4] + 36 len ('cd', 4).length]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_41955214[call.data[cd[4] + 36 len ('cd', 4).length]].length + 31 / 32 > idx:
        sub_41955214[call.data[cd[4] + 36 len ('cd', 4).length]][idx] = 0
        idx = idx + 1
        continue 
    sub_5eedf3d7[call.data[cd[4] + 36 len ('cd', 4).length]] = cd[36]
    emit 0x606aeafe: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), cd[36], sha3(call.data[cd[4] + 36 len ('cd', 4).length])
    return sha3(call.data[cd[4] + 36 len ('cd', 4).length])
}



}
