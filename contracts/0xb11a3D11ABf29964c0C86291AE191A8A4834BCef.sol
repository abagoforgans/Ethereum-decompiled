contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint32 stor0; offset 168
address stor0;
address stor1;

function _fallback() {
    stor1 = code.data[10317 len 20]
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 1
    stor0.field_168 % 16777216 = 0
    return code.data[135 len 10170]
}



// =====================  Runtime code  =====================


uint32 version; offset 160
address owner;
address managerAddress;

function manager() {
    return managerAddress
}

function version() {
    return version
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
}

function sub_025c2ccc(?) {
    mem[128 len arg3.length] = arg3[all]
    require owner == msg.sender
    require ext_code.size(managerAddress)
    call managerAddress.0xb3d7f38f with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(managerAddress)
    call managerAddress.active() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg3.length) + 128 len 2700] = code.data[3740 len 2700]
    create contract with 0 wei
                    code: code.data[3740 len 2700], managerAddress, Array(len=arg4, data=arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256), address(arg2)
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0x1b88f091 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(create.new_address)
    require ext_call.success
    emit 0xc8bf9baa: Array(len=arg3.length, data=arg3[all]), arg4, arg1, address(create.new_address)
    return address(create.new_address)
}

function sub_db8dd8a5(?) {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(managerAddress)
    call managerAddress.0xb3d7f38f with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(managerAddress)
    call managerAddress.active() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(managerAddress)
    call managerAddress.0x28be392b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg2.length) + 128 len 3687] = code.data[6440 len 3687]
    create contract with 0 wei
                    code: code.data[6440 len 3687], Array(len=arg4 << 224, data=arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), arg3
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.addProduct(address rg1) with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
    emit 0x7a7e2504: Array(len=arg2.length, data=arg2[all]), address(create.new_address), arg1
    return address(create.new_address)
}

function sub_eac310ac(?) {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(managerAddress)
    call managerAddress.0xb3d7f38f with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(managerAddress)
    call managerAddress.active() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(managerAddress)
    call managerAddress.0xa94dd032 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[ceil32(arg2.length) + 128 len 2700] = code.data[3740 len 2700]
    create contract with 0 wei
                    code: code.data[3740 len 2700], managerAddress, Array(len=ext_call.return_data[0], data=arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), address(arg1)
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0x1b88f091 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(create.new_address)
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0xa94dd032 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0xc8bf9baa: Array(len=arg2.length, data=arg2[all]), ext_call.return_data[0], msg.sender, address(create.new_address)
    return address(create.new_address)
}



}
