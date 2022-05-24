contract main {




// =====================  Runtime code  =====================


#
#  - execute()
#
address stor0;
array of uint256 callData;
address stor5;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
address stor8;
address stor13;
uint256 stor14;
uint256 stor15;
big3840 stor15;
uint8 stor16;
uint8 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor22;
uint8 stor23;

function callData() {
    return callData[0 len callData.length]
}

function _fallback() payable {
  stop
}

function requestData() {
    require stor17 <= 2
    return stor8, stor0 >> 1280, 
           bool(uint8(stor6.field_160)), bool(uint8(stor6.field_168)), bool(uint8(stor6.field_176)) >> 512,
           Mask(3840, 0, stor15),
           stor16
}

function refundClaimDeposit() {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0x7994549a with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function cancel() {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0x32839d98 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sendFee() {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0xf925a7d6 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sendBounty() {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0xab3b2e81 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sendOwnerEther() {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0x4074b91c with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sendOwnerEther(address arg1) {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0xd81b530c with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function proxy(address arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require stor5 == msg.sender
    require stor18 + stor19 >= stor18
    require stor17 <= 2
    if stor17 == 2:
        require block.timestamp > stor18 + stor19
    else:
        require stor17 <= 2
        require stor17 == 1
        require block.number > stor18 + stor19
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    return bool(ext_call.success)
}

function initialize(address[4] arg1, uint256[12] arg2, bytes arg3) payable {
    mem[640 len ('cd', 516).length] = call.data[cd[516] + 36 len ('cd', 516).length]
    require not stor23
    mem[ceil32(('cd', 516).length) + 640] = 0x8c5bebf200000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 516).length) + 1252 len ceil32(('cd', 516).length)] = call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 640 len ceil32(('cd', 516).length) - ('cd', 516).length]
    if not ('cd', 516).length % 32:
        require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
        delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0x8c5bebf2 with:
             gas gas_remaining wei
            args 0, call.data[4 len 128], call.data[132 len 384], 576, ('cd', 516).length, Mask(8 * ('cd', 516).length, -(8 * ('cd', 516).length) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 640 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ('cd', 516).length) - 256
    else:
        mem[floor32(('cd', 516).length) + ceil32(('cd', 516).length) + 1252] = mem[floor32(('cd', 516).length) + ceil32(('cd', 516).length) + -(('cd', 516).length % 32) + 1284 len ('cd', 516).length % 32]
        require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
        delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.0x8c5bebf2 with:
             gas gas_remaining wei
            args 0, call.data[4 len 128], call.data[132 len 384], 576, ('cd', 516).length, Mask(8 * ceil32(('cd', 516).length), -(8 * ceil32(('cd', 516).length)) + 256, call.data[cd[516] + 36 len ('cd', 516).length], mem[('cd', 516).length + 640 len ceil32(('cd', 516).length) - ('cd', 516).length]) << (8 * ceil32(('cd', 516).length)) - 256, mem[(2 * ceil32(('cd', 516).length)) + 1252 len floor32(('cd', 516).length) + -ceil32(('cd', 516).length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor23 = 1
}

function claim() payable {
    require not stor13
    require not uint8(stor6.field_160)
    require stor17 <= 2
    if stor17 == 2:
        require stor20 <= stor18
        require stor22 <= stor18 - stor20
        require stor18 - stor20 - stor22 <= block.timestamp
    else:
        require stor17 <= 2
        require stor17 == 1
        require stor20 <= stor18
        require stor22 <= stor18 - stor20
        require stor18 - stor20 - stor22 <= block.number
    require stor20 <= stor18
    require stor17 <= 2
    if stor17 == 2:
        require block.timestamp < stor18 - stor20
    else:
        require stor17 <= 2
        require stor17 == 1
        require block.number < stor18 - stor20
    require msg.value >= uint256(stor15)
    emit Claimed()
    require stor20 <= stor18
    require stor22 <= stor18 - stor20
    require stor17 <= 2
    if stor17 == 2:
        require stor18 - stor20 - stor22 <= block.timestamp
        if block.timestamp - stor18 + stor20 + stor22:
            require block.timestamp - stor18 + stor20 + stor22
            require (100 * block.timestamp) - (100 * stor18) + (100 * stor20) + (100 * stor22) / block.timestamp - stor18 + stor20 + stor22 == 100
        require stor22
        require (100 * block.timestamp) - (100 * stor18) + (100 * stor20) + (100 * stor22) / stor22 <= 100
        stor13 = msg.sender
        stor14 = msg.value
        stor16 = uint8((100 * block.timestamp) - (100 * stor18) + (100 * stor20) + (100 * stor22) / stor22)
    else:
        require stor17 <= 2
        require stor17 == 1
        require stor18 - stor20 - stor22 <= block.number
        if block.number - stor18 + stor20 + stor22:
            require block.number - stor18 + stor20 + stor22
            require (100 * block.number) - (100 * stor18) + (100 * stor20) + (100 * stor22) / block.number - stor18 + stor20 + stor22 == 100
        require stor22
        require (100 * block.number) - (100 * stor18) + (100 * stor20) + (100 * stor22) / stor22 <= 100
        stor13 = msg.sender
        stor14 = msg.value
        stor16 = uint8((100 * block.number) - (100 * stor18) + (100 * stor20) + (100 * stor22) / stor22)
    return 1
}



}
