contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 8476]
}



// =====================  Runtime code  =====================


#
#  - sub_6d85cbd2(?)
#  - sub_917377bb(?)
#  - sub_ad9a62a9(?)
#
address owner;
mapping of uint256 stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
mapping of uint8 stor99;

function owner() {
    return owner
}

function getDayIndex(uint256 arg1) {
    return (arg1 / 24 * 3600)
}

function _fallback() payable {
    require msg.value > 0
    emit 0x4654a6ef: msg.value, tx.origin, msg.sender
}

function sub_a1b2d1e6(?) {
    require owner == msg.sender
    require arg1
    require eth.balance(this.address) > 0
    require arg2 > 0
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_c0f11fa9(?) {
    require owner == msg.sender
    require arg1
    require arg2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require arg3 > 0
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_eda6f6ce(?) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1)
    uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = 0
}

function sub_aae060e4(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 128] = bool(address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]))
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getTokenAddress(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_de25fd20(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1)
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_50cf9918(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 128] = sha3(address(arg2), sha3(arg1, 3))
    mem[ceil32(arg3.length) + 128] = uint256(stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]])
    return memory
      from ceil32(arg3.length) + 128
       len 32
}

function sub_af631779(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 128] = sha3(address(arg2), sha3(arg1, 2))
    mem[ceil32(arg3.length) + 128] = bool(uint8(stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]))
    return memory
      from ceil32(arg3.length) + 128
       len 32
}

function sub_593670f1(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), sha3(block.timestamp / 24 * 3600, 3))
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_57428094(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), sha3(block.timestamp / 24 * 3600, 2))
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]))
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_17456e56(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 132] = this.address
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] >= 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = arg2
}

function sub_5047edb7(?) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg2.length) + 128] = 'ETH'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) != sha3('ETH'):
        mem[arg2.length + ceil32(arg2.length) + 128] = 4
        require address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1)
    uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = arg3
}

function sub_94081e21(?) {
    mem[160 len 0] = None
    require stor1[address(msg.sender)][mem[160 len 3]] > 0
    mem[160 len 0] = None
    mem[160 len 29] = Mask(232, 24, mem[160 len 3], Mask(232, 24, sha3(address(msg.sender), 1)) >> 24) >> 24
    if stor2[block.timestamp / 24 * 3600][address(msg.sender)][mem[160 len 3]]:
        require arg2 > 0
        mem[160 len 0] = None
        mem[160 len 29] = mem[160 len 3], Mask(208, 48, sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 2))) >> 48
    else:
        mem[160 len 0] = None
        mem[160 len 29] = mem[160 len 3], Mask(208, 48, sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 2))) >> 48
        stor2[block.timestamp / 24 * 3600][address(msg.sender)][mem[160 len 3]] = 1
        mem[160 len 0] = None
        mem[160 len 29] = mem[160 len 3], Mask(208, 48, sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 2))) >> 48
        _302 = sha3(mem[160 len 3], sha3(address(msg.sender), 1))
        mem[160 len 0] = None
        mem[160 len 29] = mem[160 len 3], Mask(208, 48, sha3(address(msg.sender), 1)) >> 48
        stor3[block.timestamp / 24 * 3600][address(msg.sender)][mem[160 len 3]] = uint256(stor[_302])
        require arg2 > 0
        mem[160 len 0] = None
        mem[160 len 29] = mem[160 len 3], Mask(208, 48, sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 3))) >> 48
    require stor3[block.timestamp / 24 * 3600][address(msg.sender)][mem[160 len 3]] >= arg2
    mem[160 len 0] = None
    mem[160 len 29] = mem[160 len 3], Mask(208, 48, sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 3))) >> 48
    stor3[block.timestamp / 24 * 3600][address(msg.sender)][mem[160 len 3]] -= arg2
    require arg1
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_50e12ab1(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), 1)
    require uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) > 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 2))
    if uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        require arg3 > 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 3))
        require uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) >= arg3
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 3))
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) -= arg3
        if arg2:
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + 128] = 4
            if address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 4
                _711 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                mem[ceil32(arg1.length) + 160] = 0
                mem[ceil32(arg1.length) + 132] = this.address
                require ext_code.size(address(stor[_711]))
                call address(stor[_711]).0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0] > 0
                require arg3 > 0
                require ext_call.return_data[0] >= arg3
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 4
                require ext_code.size(address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]))
                call address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), arg3
                require ext_call.success
                if ext_call.return_data[0]:
    else:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 2))
        uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 1
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), 1)
        _534 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 3))
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = uint256(stor[_534])
        require arg3 > 0
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 3))
        require uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) >= arg3
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = sha3(address(msg.sender), sha3(block.timestamp / 24 * 3600, 3))
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) -= arg3
        if arg2:
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + 128] = 4
            if address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 4
                _853 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                mem[ceil32(arg1.length) + 160] = 0
                mem[ceil32(arg1.length) + 132] = this.address
                require ext_code.size(address(stor[_853]))
                call address(stor[_853]).0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0] > 0
                require arg3 > 0
                require ext_call.return_data[0] >= arg3
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 4
                require ext_code.size(address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]))
                call address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), arg3
                require ext_call.success
                if ext_call.return_data[0]:
    revert
}



}
