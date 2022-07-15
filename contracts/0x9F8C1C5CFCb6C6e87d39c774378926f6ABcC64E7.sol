contract main {




// =====================  Runtime code  =====================


address sub_3967946dAddress;
mapping of uint8 stor1;
mapping of uint8 stor99;

function sub_3967946d(?) {
    return sub_3967946dAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        revert with 0, 'msg.sender is not the Owner.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New Owner must be a valid address'
    emit OwnershipTransferred(sub_3967946dAddress, arg1);
    sub_3967946dAddress = arg1
}

function sub_988a6063(?) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    if not arg1:
        revert with 0, 'address cannot be 0'
    stor1[address(arg1)] = 0
    emit 0x46a78655: arg1
}

function sub_6078a3b2(?) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    if not arg1:
        revert with 0, 'address cannot be 0'
    stor1[address(arg1)] = 1
    emit AddressRegistered(arg1);
}

function sub_5078e52d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function checkRole(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 2
    if not uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]):
        revert with 0, 'This address doesn't correspond with the role specified.'
}

function sub_f23d080f(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 2
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1][address(arg1)]))
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function hasRole(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 2
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]))
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_5a6ee999(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 2
    if 1 == bool(uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)])):
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 2
        uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1][address(arg1)]) = 0
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128]
        mem[arg2.length + ceil32(arg2.length) + 128] = 4
        uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])--
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        if 0 >= arg2.length:
            if not arg2.length % 32:
                emit 0x65d26536: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + 32], arg1
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
                emit 0x65d26536: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -(arg2.length % 32) + ceil32(arg2.length) + 64], arg1
        else:
            mem[ceil32(arg2.length) + 192] = mem[128]
            mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit 0x65d26536: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + 32], arg1
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
                emit 0x65d26536: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], mem[128], mem[ceil32(arg2.length) + 224 len floor32(arg2.length)], arg1
}

function sub_641d7a78(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 2
    if 1 == bool(uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)])):
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 2
        uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1][address(arg1)]) = 1
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 4
        uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])++
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        if 0 >= arg2.length:
            if not arg2.length % 32:
                emit 0xb9a56ef3: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + 32], arg1
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
                emit 0xb9a56ef3: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -(arg2.length % 32) + ceil32(arg2.length) + 64], arg1
        else:
            mem[ceil32(arg2.length) + 192] = mem[128]
            mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit 0xb9a56ef3: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + 32], arg1
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
                emit 0xb9a56ef3: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], mem[128], mem[ceil32(arg2.length) + 224 len floor32(arg2.length)], arg1
}

function removeRole(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 2
    if uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]):
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 2
        uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]) = 0
        uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][1][address(arg1)]) = 0
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128]
        mem[arg2.length + ceil32(arg2.length) + 128] = 3
        uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])--
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit RoleRemoved(address arg1, string arg2):
                             Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                             mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                             Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                             arg1,
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
            emit RoleRemoved(address arg1, string arg2):
                             Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                             mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                             Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                             mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                             arg1,
}

function addRole(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        88,
                        0x634f6e6c792074686520496d6d656469617465204f776e6572206f6620746865,
                        0xfe706c6174666f726d206f7220612057686974656c6973746564206164647220,
                        0x20616e2065786563757465207468652066756e6374696f6e2e00000000000000
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 2
    if not uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]):
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 2
        uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]) = 1
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 3
        uint256(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)])++
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        if 0 >= arg2.length:
            if not arg2.length % 32:
                emit RoleAdded(address arg1, string arg2):
                               Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                               mem[arg2.length + 160 len ceil32(arg2.length) + 32],
                               arg1,
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
                emit RoleAdded(address arg1, string arg2):
                               Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                               mem[arg2.length + 160 len -(arg2.length % 32) + ceil32(arg2.length) + 64],
                               arg1,
        else:
            mem[ceil32(arg2.length) + 192] = mem[128]
            mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit RoleAdded(address arg1, string arg2):
                               Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                               mem[arg2.length + 160 len ceil32(arg2.length) + 32],
                               arg1,
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
                emit RoleAdded(address arg1, string arg2):
                               Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                               mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                               mem[128],
                               mem[ceil32(arg2.length) + 224 len floor32(arg2.length)],
                               arg1,
}



}
