contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
address stor5;

function _fallback() {
    mem[96 len -2403] = code.data[3100 len -2403]
    mem[64] = -2307
    stor0 = block.timestamp
    stor1 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3 = mem[128]
    mem[0] = 4
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    mem[-2271] = mem[mem[192] + 96]
    _481 = mem[mem[192] + 96]
    mem[-2239 len ceil32(mem[mem[192] + 96])] = mem[mem[192] + 128 len ceil32(mem[mem[192] + 96])]
    if not _481 % 32:
        require ext_code.size(0xa07fde770a7bd58730e816fe332a7bae15c56c91)
        delegate 0xa07fde770a7bd58730e816fe332a7bae15c56c91.0x52810427 with:
             gas gas_remaining - 710 wei
            args 32, mem[-2271 len _481 + 32]
    else:
        mem[floor32(_481) - 2239] = mem[floor32(_481) + -(_481 % 32) - 2207 len _481 % 32]
        require ext_code.size(0xa07fde770a7bd58730e816fe332a7bae15c56c91)
        delegate 0xa07fde770a7bd58730e816fe332a7bae15c56c91.0x52810427 with:
             gas gas_remaining - 710 wei
            args 32, mem[-2271 len floor32(_481) + 64]
    require delegate.return_code
    stor5 = address(delegate.return_data[0])
    return code.data[697 len 2403]
}



// =====================  Runtime code  =====================


uint256 createdAt;
address owner;
array of uint256 word;
uint256 design;
array of uint256 sub_a7ed582a;
address sub_17a5410bAddress;

function sub_17a5410b(?) {
    return sub_17a5410bAddress
}

function word() {
    return word[0 len word.length]
}

function owner() {
    return owner
}

function design() {
    return design
}

function sub_a7ed582a(?) {
    return sub_a7ed582a[0 len sub_a7ed582a.length]
}

function timestamp() {
    return createdAt
}

function createdAt() {
    return createdAt
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnershipTo(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_f6345414(?) {
    require msg.sender == owner
    require ext_code.size(0xa07fde770a7bd58730e816fe332a7bae15c56c91)
    delegate 0xa07fde770a7bd58730e816fe332a7bae15c56c91.0x52810427 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    require delegate.return_code
    sub_17a5410bAddress = address(delegate.return_data[0])
    require ext_code.size(sub_17a5410bAddress)
    call sub_17a5410bAddress.upgrade(address arg1) with:
         gas gas_remaining - 710 wei
        args sub_17a5410bAddress
    require ext_call.success
}



}
