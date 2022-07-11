contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address oracleAddress;
uint256 sub_a7fad1df;
mapping of struct sub_a6c7a77c;
mapping of uint8 stor5;
mapping of struct sub_ed89a097;

function sub_352fe602(?) {
    return bool(stor5[arg1])
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function sub_a6c7a77c(?) {
    mem[128] = sub_a6c7a77c[arg1].field_0
    idx = 128
    s = 0
    while sub_a6c7a77c[arg1].length + 96 > idx:
        mem[idx + 32] = sub_a6c7a77c[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_a6c7a77c[arg1].length, data=mem[128 len sub_a6c7a77c[arg1].length]), 
           sub_a6c7a77c[arg1].field_256,
           sub_a6c7a77c[arg1].field_512,
           sub_a6c7a77c[arg1].field_768
}

function sub_a7fad1df(?) {
    return sub_a7fad1df
}

function sub_c9ce9fb0(?) {
    return bool(stor5[arg1])
}

function sub_ed89a097(?) {
    mem[128] = sub_ed89a097[arg1].field_0
    idx = 128
    s = 0
    while sub_ed89a097[arg1].length + 96 > idx:
        mem[idx + 32] = sub_ed89a097[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_ed89a097[arg1].length, data=mem[128 len sub_ed89a097[arg1].length]), 
           sub_ed89a097[arg1].field_256,
           sub_ed89a097[arg1].field_512,
           sub_ed89a097[arg1].field_768
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_269cc8f1(?) {
    return not not sub_a6c7a77c[address(arg1)].field_768
}

function sub_ad413837(?) {
    require msg.sender == oracleAddress
    stor5[arg1] = 1
}

function transferOracle(address arg1) {
    require msg.sender == oracleAddress
    oracleAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function checkBalance(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function distribute(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender == sub_a6c7a77c[address(arg1)].field_768
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Distributed(address(arg1), address(arg2), arg3);
}

function donate(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require sub_a6c7a77c[address(arg2)].field_768
    require ext_code.size(tokenAddress)
    call tokenAddress.0x41099135 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_a6c7a77c[address(arg2)].field_512)
    call sub_a6c7a77c[address(arg2)].field_512.0x41099135 with:
         gas gas_remaining wei
        args address(arg2), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x3a3d0219: address(arg1), address(arg2), arg3
}

function sub_cee67b34(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg4.length
    require msg.sender == owner
    require not sub_a6c7a77c[address(arg3)].field_768
    require arg2
    sub_a7fad1df++
    create contract with 0 wei
                    code: code.data[7699 len 3195], 32, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a6c7a77c[address(arg3)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_a6c7a77c[address(arg3)].field_256 = uint64(arg3) << 96
    sub_a6c7a77c[address(arg3)].field_512 = address(create.new_address)
    sub_a6c7a77c[address(arg3)].field_768 = uint64(arg2) << 96
    sub_ed89a097[stor3][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_ed89a097[stor3].field_256 = uint64(arg3) << 96
    sub_ed89a097[stor3].field_512 = address(create.new_address)
    sub_ed89a097[stor3].field_768 = uint64(arg2) << 96
    emit 0xa91ee9f2: Array(len=arg1.length, data=arg1[all]), address(arg3)
}



}
