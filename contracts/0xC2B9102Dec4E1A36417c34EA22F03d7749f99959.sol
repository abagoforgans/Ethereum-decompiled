contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 4469]




// =====================  Runtime code  =====================


array of uint256 stor1;
array of struct stor2;
array of address stor3;
array of address stor4;

function _fallback() payable {
    revert
}

function sub_9c5a0060(?) payable {
    stor1[arg1] = 0x79056e9bb24f897d7f885dacdb2d506599944c0cdfd6b7495eb7f3ea624ac5af
    stor2[arg1].field_0 = 0
    stor2[arg1].field_8 = arg2
    if arg2:
        require ext_code.size(arg2)
        call arg2.next() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor3[arg1]) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3[arg1]))
        require ext_code.size(arg2)
        call arg2.tail() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor4[arg1]) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4[arg1]))
}

function sub_e48a8ed6(?) payable {
    require ext_code.size(this.address)
    call this.address.upgraded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    stor2[arg1].field_0 = 1
    idx = stor2[arg1].field_8
    while address(idx):
        require ext_code.size(address(idx))
        call address(idx).transferOwnershipTo(address rg1) with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
        mem[128] = 0
        require ext_code.size(address(idx))
        call address(idx).previous() with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = ext_call.return_data[0]
        continue 
}

function sub_c8611571(?) payable {
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(this.address)
    call this.address.upgraded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(arg2)
    call arg2.interfaceID() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == stor1[arg1]
    if not address(stor3[arg1]):
        address(stor3[arg1]) = arg2
    else:
        require ext_code.size(address(stor4[arg1]))
        call address(stor4[arg1]).0xb2b2b44d with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
    address(stor4[arg1]) = arg2
}

function sub_c7731028(?) payable {
    mem[128 len arg3.length] = arg3[all]
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg3.length) + 160] = 0
    require ext_code.size(this.address)
    call this.address.upgraded() with:
         gas gas_remaining - 710 wei
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require not ext_call.return_data[0]
    require Mask(32, 224, mem[128]) != 0xb2b2b44d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    return bool(ext_call.success)
}

function sub_ffeba90e(?) payable {
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(this.address)
    call this.address.upgraded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(0xa07fde770a7bd58730e816fe332a7bae15c56c91)
    delegate 0xa07fde770a7bd58730e816fe332a7bae15c56c91.0x52810427 with:
         gas gas_remaining - 710 wei
        args Array(len=arg2.length, data=arg2[all])
    require delegate.return_code
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == address(ext_call.return_data[0])
    require ext_code.size(this.address)
    call this.address.upgraded() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require address(ext_call.return_data[0]) == this.address
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).interfaceID() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == stor1[arg1]
    if not address(stor3[arg1]):
        address(stor3[arg1]) = address(delegate.return_data[0])
    else:
        require ext_code.size(address(stor4[arg1]))
        call address(stor4[arg1]).0xb2b2b44d with:
             gas gas_remaining - 710 wei
            args address(delegate.return_data[0])
        require ext_call.success
    address(stor4[arg1]) = address(delegate.return_data[0])
}



}
