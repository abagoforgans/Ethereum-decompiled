contract main {




// =====================  Runtime code  =====================


mapping of address address;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of address proxies;

function logicProxies(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function logicProxiesStatic(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function getAddress(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    return address[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]
}

function proxies(address arg1) payable {
    require calldata.size - 4 >= 32
    return proxies[arg1]
}

function _fallback() payable {
    revert
}

function logicStatic(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[address(arg1)]:
        return 0
    return 1
}

function logic(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[address(arg1)]:
        if not stor2[address(arg1)]:
            return 0
    return 1
}

function enableLogic(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    if address[mem[192 len 5]] != msg.sender:
        mem[293 len 0] = None
        if address[mem[293 len 5]] != msg.sender:
            revert with 0, 'permission-denied'
    stor2[address(arg1)] = 1
    emit LogEnableLogic(arg1);
}

function disableLogic(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    if address[mem[192 len 5]] != msg.sender:
        mem[293 len 0] = None
        if address[mem[293 len 5]] != msg.sender:
            revert with 0, 'permission-denied'
    stor2[address(arg1)] = 0
    emit LogDisableLogic(arg1);
}

function enableStaticLogic(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    if address[mem[192 len 5]] != msg.sender:
        mem[293 len 0] = None
        if address[mem[293 len 5]] != msg.sender:
            revert with 0, 'permission-denied'
    stor1[address(arg1)] = 1
    emit LogEnableStaticLogic(arg1);
}

function record(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if proxies[address(arg1)] != msg.sender:
        revert with 0, 'invalid-proxy-or-owner'
    if proxies[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[9378 len 35], mem[199 len 29]
    proxies[address(arg2)] = proxies[address(arg1)]
    proxies[address(arg1)] = 0
    emit LogRecord(proxies[address(arg2)], arg1, arg2);
}

function build() payable {
    if proxies[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[9378 len 35], mem[199 len 29]
    create contract with 0 wei
                    code: code.data[6472 len 2906]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    proxies[address(this.address)] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(address(create.new_address), msg.sender, msg.sender);
    return address(create.new_address)
}

function build(address arg1) payable {
    require calldata.size - 4 >= 32
    if proxies[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[9378 len 35], mem[199 len 29]
    create contract with 0 wei
                    code: code.data[6472 len 2906]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    proxies[address(this.address)] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setOwner(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(address(create.new_address), msg.sender, arg1);
    return address(create.new_address)
}

function setAddress(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[64] = ceil32(arg1.length) + 192
    mem[ceil32(arg1.length) + 128] = 5
    mem[ceil32(arg1.length) + 160] = 'admin'
    mem[ceil32(arg1.length) + 224 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 256 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    if msg.sender == address[mem[ceil32(arg1.length) + 224 len 5]]:
        mem[ceil32(arg1.length) + 261 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 293 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        address[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 261 len arg1.length % 32]] = arg2
    else:
        mem[ceil32(arg1.length) + 325 len 0] = None
        if address[mem[ceil32(arg1.length) + 325 len 5]] != msg.sender:
            revert with 0, 'permission-denied'
        mem[ceil32(arg1.length) + 362 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 394 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        address[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 362 len arg1.length % 32]] = arg2
    emit LogSetAddress(Array(len=arg1.length, data=arg1[all]), address(arg2));
}



}
