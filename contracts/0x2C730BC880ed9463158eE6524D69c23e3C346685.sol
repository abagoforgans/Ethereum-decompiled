contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[4246 len 20]
    stor1 = code.data[4310 len 20]
    stor2 = code.data[4278 len 20]
    return code.data[273 len 3961]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;

function _fallback() payable {
    revert
}

function getInfo() {
    return address(stor2.field_0), stor0
}

function changeOwner(address arg1) {
    require msg.sender == address(stor2.field_0)
    address(stor2.field_0) = arg1
}

function setCoordinator(address arg1) {
    require msg.sender == address(stor2.field_0)
    require arg1
    stor1 = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'token'
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'token'
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_eb6bce7b(?) {
    mem[128 len arg1.length] = arg1[all]
    if stor0 != msg.sender:
        require msg.sender == address(stor2.field_0)
    require arg2
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
    require ext_call.success
    if arg3:
        mem[ceil32(arg1.length) + 132] = 'listorData'
        require ext_code.size(stor1)
        call stor1.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'listorData'
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if arg2 != address(ext_call.return_data[0]):
            require mem[164] == arg3
            require ext_code.size(stor1)
            call stor1.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'token'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3
            require ext_call.success
            require ext_call.return_data[0]
        else:
            require ext_code.size(stor1)
            call stor1.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'listorData'
            require ext_call.success
            mem[ceil32(arg1.length) + 132] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x1c9ac381 with:
                 gas gas_remaining wei
                args this.address
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                require mem[164] == arg3
                require ext_code.size(stor1)
                call stor1.getAddress(bytes32 arg1) with:
                     gas gas_remaining wei
                    args 'token'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                require ext_call.success
                require ext_call.return_data[0]
    emit Forward(address(arg2), arg3);
    Mask(96, 0, stor2.field_160) = 0
}



}
