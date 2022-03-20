contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 1
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 10126]
}



// =====================  Runtime code  =====================


address contractOwner;
uint256 stor0;
mapping of uint8 sub_aeadd049;
mapping of uint8 stor2;
mapping of struct owner;
mapping of uint8 holderId;
mapping of struct allowance;
mapping of struct proxies;
mapping of address sub_c372fe16;
mapping of address stor99;

function owner(bytes32 arg1) payable {
    return address(owner[uint256(stor5[arg1].field_0)].field_256)
}

function getHolderId(address arg1) payable {
    return uint256(holderId[address(arg1)])
}

function allowance(address arg1, address arg2, bytes32 arg3) payable {
    return uint256(allowance[arg3][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(arg2)])].field_0)
}

function balanceOf(address arg1, bytes32 arg2) payable {
    return uint256(allowance[arg2][5][uint256(stor4[address(arg1)])].field_0)
}

function name(bytes32 arg1) payable {
    return uint256(allowance[arg1][2][0 len allowance[arg1][2].length].field_0)
}

function proxies(bytes32 arg1) payable {
    return address(proxies[arg1].field_0), uint8(proxies[arg1].field_160)
}

function holdersCount() payable {
    return stor2.length
}

function assets(bytes32 arg1) payable {
    mem[320] = uint256(allowance[arg1][2].field_0)
    idx = 320
    s = 0
    while allowance[arg1][2].length + 320 > idx + 32:
        mem[idx + 32] = uint256(allowance[arg1][s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 320] = allowance[arg1][3].length
    mem[allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 352] = uint256(allowance[arg1][3].field_0)
    idx = allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 352
    s = 0
    while allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + allowance[arg1][3].length + 352 > idx + 32:
        mem[idx + 32] = uint256(allowance[arg1][s + 3].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(allowance[arg1].field_0), 
           uint256(allowance[arg1].field_256),
           Array(len=allowance[arg1][2].length, data=mem[320 len allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + allowance[arg1][3].length + (floor32(allowance[arg1][3].length - 1) + -allowance[arg1][3].length + 32 % 32) + 32]),
           allowance[arg1][2].length + (floor32(allowance[arg1][2].length - 1) + -allowance[arg1][2].length + 32 % 32) + 224,
           uint8(allowance[arg1].field_1024),
           uint8(allowance[arg1].field_1024)
}

function sub_aeadd049(?) payable {
    return uint8(sub_aeadd049[arg1])
}

function totalSupply(bytes32 arg1) payable {
    return uint256(allowance[arg1].field_256)
}

function description(bytes32 arg1) payable {
    return uint256(allowance[arg1][3][0 len allowance[arg1][3].length].field_0)
}

function sub_c372fe16(?) payable {
    return address(sub_c372fe16[arg1])
}

function isReissuable(bytes32 arg1) payable {
    return uint8(allowance[arg1].field_1024)
}

function contractOwner() payable {
    return address(contractOwner)
}

function baseUnit(bytes32 arg1) payable {
    return uint8(allowance[arg1].field_1032)
}

function _fallback() payable {
  stop
}

function isEnabled(bytes32 arg1) payable {
    return not uint8(sub_aeadd049[arg1])
}

function isCreated(bytes32 arg1) payable {
    return not not uint256(allowance[arg1].field_0)
}

function isTrusted(address arg1, address arg2) payable {
    return not not uint256(owner[uint256(stor4[address(arg1)])][3][address(arg2)].field_0)
}

function changeContractOwnership(address arg1) payable {
    if address(contractOwner) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_713574bd(?) payable {
    if address(contractOwner) != msg.sender:
        return 0
    uint256(sub_aeadd049[arg1]) = arg2 or Mask(248, 8, uint256(sub_aeadd049[arg1]))
    return arg2
}

function isOwner(address arg1, bytes32 arg2) payable {
    if not uint256(allowance[arg2].field_0):
        return not not uint256(allowance[arg2].field_0)
    return (uint256(allowance[arg2].field_0) == uint256(holderId[address(arg1)]))
}

function sub_bb6e0e2c(?) payable {
    if 0 == uint256(holderId[address(msg.sender)]):
        return 0
    if 1 == uint256(owner[uint256(stor4[address(msg.sender)])].field_0):
        return 0
    mem[0] = uint256(holderId[address(msg.sender)])
    mem[32] = 3
    s = 0
    idx = 1
    while idx < uint256(owner[uint256(stor4[address(msg.sender)])].field_0):
        _17 = sha3(idx, sha3(mem[0 len 64]) + 2)
        uint256(stor[sha3(mem[0 len 64]) + 3][address(stor[sha3(mem[0 len 64]) + 2][idx])]) = 0
        address(stor[sha3(mem[0 len 64]) + 2][idx]) = 0
        mem[0] = uint256(holderId[address(msg.sender)])
        mem[32] = 3
        s = address(stor[_17])
        idx = idx + 1
        continue 
    uint256(owner[uint256(stor4[address(msg.sender)])].field_0) = 1
    return 1
}

function recover(address arg1, address arg2) payable {
    if uint8(stor1[('map', ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'holderId', 4)))), ('name', 'holderId', 4))]):
        return 0
    if address(sub_c372fe16[uint256(stor4[address(arg1)])]):
        call address(sub_c372fe16[uint256(stor4[address(arg1)])]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(arg1)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    if not uint256(owner[uint256(stor4[address(arg1)])][3][address(msg.sender)].field_0):
        return 0
    if uint256(holderId[address(arg2)]) != 0:
        return 0
    uint256(owner[uint256(stor4[address(arg1)])].field_256) = arg2 or Mask(96, 160, uint256(owner[uint256(stor4[address(arg1)])].field_256))
    uint256(holderId[address(arg2)]) = uint256(holderId[address(arg1)])
    emit Recovery(msg.sender, address(owner[uint256(stor4[address(arg1)])].field_256), arg2);
    return 1
}

function sub_30d30c89(?) payable {
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if not uint256(allowance[arg2].field_0):
        return 0
    if uint256(allowance[arg2].field_0) != uint256(holderId[address(msg.sender)]):
        return 0
    uint256(proxies[arg2].field_0) = arg1 or Mask(96, 160, uint256(proxies[arg2].field_0))
    return 1
}

function sub_06489899(?) payable {
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if not uint256(allowance[arg3].field_0):
        return 0
    if uint256(allowance[arg3].field_0) != uint256(holderId[address(msg.sender)]):
        return 0
    uint256(proxies[arg3][1][address(arg1)].field_0) = arg2 or Mask(248, 8, uint256(proxies[arg3][1][address(arg1)].field_0))
    return 1
}

function distrust(address arg1) payable {
    if not uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0):
        return 0
    if uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0) < uint256(owner[uint256(stor4[address(msg.sender)])].field_0) - 1:
        address(owner[uint256(stor4[address(msg.sender)])][2][uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0)].field_0) = address(owner[uint256(stor4[address(msg.sender)])][2][uint256(owner[uint256(stor4[address(msg.sender)])].field_0) - 1].field_0)
        uint256(owner[uint256(stor4[address(msg.sender)])][3][address(owner[uint256(stor4[address(msg.sender)])][2][uint256(owner[uint256(stor4[address(msg.sender)])].field_0) - 1].field_0)].field_0) = uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0)
    uint256(owner[uint256(stor4[address(msg.sender)])].field_0)--
    address(owner[uint256(stor4[address(msg.sender)])][2][uint256(owner[uint256(stor4[address(msg.sender)])].field_0) - 1].field_0) = 0
    uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0) = 0
    return 1
}

function setCosignerAddressForUser(address arg1) payable {
    if uint8(stor1[('map', ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)))), ('name', 'proxies', 6))].field_0):
        return 0
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    if uint256(holderId[address(msg.sender)]) != 0:
        uint256(sub_c372fe16[uint256(stor4[address(msg.sender)])]) = arg1 or Mask(96, 160, uint256(sub_c372fe16[uint256(stor4[address(msg.sender)])]))
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = msg.sender or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(msg.sender)]) = stor2.length
        uint256(sub_c372fe16[stor2.length]) = arg1 or Mask(96, 160, uint256(sub_c372fe16[stor2.length]))
    return 1
}

function sub_34553205(?) payable {
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if not uint256(allowance[arg2].field_0):
        return 0
    if uint256(allowance[arg2].field_0) != uint256(holderId[address(msg.sender)]):
        return 0
    if arg1:
        if uint256(allowance[arg2][5][uint256(stor4[address(msg.sender)])].field_0) != uint256(allowance[arg2].field_256):
            return 0
    Mask(96, 0, proxies[arg2].field_160) = Mask(96, 0, arg1)
    return 1
}

function trust(address arg1) payable {
    if uint256(holderId[address(msg.sender)]) != 0:
        if uint256(holderId[address(msg.sender)]) == uint256(holderId[address(arg1)]):
            return 0
        if uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0):
            return 0
        uint256(owner[uint256(stor4[address(msg.sender)])].field_0)++
        uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0) = uint256(owner[uint256(stor4[address(msg.sender)])].field_0)
        uint256(owner[uint256(stor4[address(msg.sender)])][2][uint256(owner[uint256(stor4[address(msg.sender)])].field_0)].field_0) = arg1 or Mask(96, 160, uint256(owner[uint256(stor4[address(msg.sender)])][2][uint256(owner[uint256(stor4[address(msg.sender)])].field_0)].field_0))
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = msg.sender or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(msg.sender)]) = stor2.length
        if stor2.length == uint256(holderId[address(arg1)]):
            return 0
        if uint256(owner[uint256(stor4[address(msg.sender)])][3][address(arg1)].field_0):
            return 0
        uint256(owner[stor2.length].field_0)++
        uint256(owner[stor2.length][3][address(arg1)].field_0) = uint256(owner[stor2.length].field_0)
        uint256(owner[stor2.length][2][uint256(owner[stor2.length].field_0)].field_0) = arg1 or Mask(96, 160, uint256(owner[stor2.length][2][uint256(owner[stor2.length].field_0)].field_0))
    return 1
}

function sub_2e59c036(?) payable {
    if uint8(stor1[('map', ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)))), ('name', 'proxies', 6))].field_0):
        return 0
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if uint256(holderId[address(msg.sender)]) != 0:
        uint256(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]) = arg1 or Mask(96, 160, uint256(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg2]))
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = msg.sender or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(msg.sender)]) = stor2.length
        uint256(sub_c372fe16[stor2.length][arg2]) = arg1 or Mask(96, 160, uint256(sub_c372fe16[stor2.length][arg2]))
    return 1
}

function reissueAsset(bytes32 arg1, uint256 arg2) payable {
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg1]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg1]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if not uint256(allowance[arg1].field_0):
        return 0
    if uint256(allowance[arg1].field_0) != uint256(holderId[address(msg.sender)]):
        return 0
    if arg2 < 1:
        return 0
    if not uint8(allowance[arg1].field_1024):
        return 0
    if arg2 + uint256(allowance[arg1].field_256) < uint256(allowance[arg1].field_256):
        return 0
    uint256(allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0) += arg2
    uint256(allowance[arg1].field_256) += arg2
    emit Issue(arg2, address(owner[uint256(stor4[address(msg.sender)])].field_256), arg1);
    if address(proxies[arg1].field_0) != 0:
        call address(proxies[arg1].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(owner[0].field_256), address(owner[uint256(stor4[address(msg.sender)])].field_256), arg2
        require ext_call.success
    return 1
}

function revokeAsset(bytes32 arg1, uint256 arg2) payable {
    if stor1[('map', ('param', 'arg1'), ('name', 'stor2', 2))]:
        return 0
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg1]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg1]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if not uint256(allowance[arg1].field_0):
        return 0
    if uint256(allowance[arg1].field_0) != uint256(holderId[address(msg.sender)]):
        return 0
    if arg2 < 1:
        return 0
    if uint256(allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0) < arg2:
        return 0
    uint256(allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0) -= arg2
    uint256(allowance[arg1].field_256) -= arg2
    emit Revoke(arg2, address(owner[uint256(stor4[address(msg.sender)])].field_256), arg1);
    if address(proxies[arg1].field_0) != 0:
        call address(proxies[arg1].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[0].field_256), arg2
        require ext_call.success
    return 1
}

function issueAsset(bytes32 arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, bool arg6) payable {
    if uint8(sub_aeadd049[arg1][uint8(arg6)][0]):
        return 0
    if arg2 < 1:
        if not arg6:
            return 0
    if uint256(allowance[arg1].field_0):
        return 0
    if uint256(holderId[address(msg.sender)]) != 0:
        uint256(allowance[arg1].field_0) = uint256(holderId[address(msg.sender)])
        uint256(allowance[arg1].field_256) = arg2
        uint256(allowance[arg1][2][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(allowance[arg1][3][].field_0) = Array(len=arg4.length, data=arg4[all])
        uint8(allowance[arg1].field_1024) = uint8(arg6)
        Mask(248, 0, allowance[arg1].field_1032) = Mask(248, 0, arg5)
        Mask(240, 0, allowance[arg1].field_1040) = Mask(240, 16, arg6) >> 16
        uint256(allowance[arg1][5][uint256(stor4[address(msg.sender)])].field_0) = arg2
        emit Issue(arg2, address(owner[uint256(stor4[address(msg.sender)])].field_256), arg1);
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = msg.sender or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(msg.sender)]) = stor2.length
        uint256(allowance[arg1].field_0) = stor2.length
        uint256(allowance[arg1].field_256) = arg2
        uint256(allowance[arg1][2][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(allowance[arg1][3][].field_0) = Array(len=arg4.length, data=arg4[all])
        uint8(allowance[arg1].field_1024) = uint8(arg6)
        Mask(248, 0, allowance[arg1].field_1032) = Mask(248, 0, arg5)
        Mask(240, 0, allowance[arg1].field_1040) = Mask(240, 16, arg6) >> 16
        uint256(allowance[arg1][5][stor2.length].field_0) = arg2
        emit Issue(arg2, address(owner[stor2.length].field_256), arg1);
    return 1
}

function changeOwnership(bytes32 arg1, address arg2) payable {
    if uint8(stor1[('map', ('param', 'arg1'), ('name', 'owner', 3))].field_0):
        return 0
    if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg1]):
        call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg1]).0xa25035b with:
             gas gas_remaining - 25050 wei
            args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    else:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if not uint256(allowance[arg1].field_0):
        return 0
    if uint256(allowance[arg1].field_0) != uint256(holderId[address(msg.sender)]):
        return 0
    if uint256(holderId[address(arg2)]) != 0:
        if uint256(holderId[address(arg2)]) == uint256(allowance[arg1].field_0):
            return 0
        uint256(allowance[arg1].field_0) = uint256(holderId[address(arg2)])
        emit OwnershipChange(address(owner[uint256(stor5[arg1].field_0)].field_256), address(owner[uint256(stor4[address(arg2)])].field_256), arg1);
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg2 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg2)]) = stor2.length
        if stor2.length == uint256(allowance[arg1].field_0):
            return 0
        uint256(allowance[arg1].field_0) = stor2.length
        emit OwnershipChange(address(owner[uint256(stor5[arg1].field_0)].field_256), address(owner[stor2.length].field_256), arg1);
    return 1
}

function proxyTransferWithReference(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
        return 0
    if uint256(holderId[address(arg1)]) != 0:
        if uint8(sub_aeadd049[('map', ('param', 'arg3'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) < arg2:
            return 0
        if uint256(holderId[tx.origin]) == uint256(holderId[address(arg1)]):
            return 0
        uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) -= arg2
        uint256(allowance[arg3][5][uint256(stor4[address(arg1)])].field_0) += arg2
        emit Transfer(arg2, Array(len=arg4.length, data=arg4[all]), address(owner[uint256(stor4[tx.origin])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg3);
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[tx.origin])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg1 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg1)]) = stor2.length
        if uint8(sub_aeadd049[('map', ('param', 'arg3'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) < arg2:
            return 0
        if uint256(holderId[tx.origin]) == stor2.length:
            return 0
        uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) -= arg2
        uint256(allowance[arg3][5][stor2.length].field_0) += arg2
        emit Transfer(arg2, Array(len=arg4.length, data=arg4[all]), address(owner[uint256(stor4[tx.origin])].field_256), address(owner[stor2.length].field_256), arg3);
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[tx.origin])].field_256), address(owner[stor2.length].field_256), arg2
            require ext_call.success
    return 1
}

function sub_88d4531d(?) payable {
    if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
        return 0
    if uint256(holderId[address(arg1)]) != 0:
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) < arg2:
            return 0
        if uint256(holderId[tx.origin]) == uint256(holderId[address(arg1)]):
            return 0
        uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) -= arg2
        uint256(allowance[arg3][5][uint256(stor4[address(arg1)])].field_0) += arg2
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg2,
                      64,
                      0,
                      address(owner[uint256(stor4[tx.origin])].field_256),
                      address(owner[uint256(stor4[address(arg1)])].field_256),
                      arg3,
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[tx.origin])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg1 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg1)]) = stor2.length
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) < arg2:
            return 0
        if uint256(holderId[tx.origin]) == stor2.length:
            return 0
        uint256(allowance[arg3][5][uint256(stor4[tx.origin])].field_0) -= arg2
        uint256(allowance[arg3][5][stor2.length].field_0) += arg2
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg2,
                      64,
                      0,
                      address(owner[uint256(stor4[tx.origin])].field_256),
                      address(owner[stor2.length].field_256),
                      arg3,
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[tx.origin])].field_256), address(owner[stor2.length].field_256), arg2
            require ext_call.success
    return 1
}

function transferWithReference(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    if uint256(holderId[address(arg1)]) != 0:
        if uint8(sub_aeadd049[('map', ('param', 'arg3'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) < arg2:
            return 0
        if uint256(holderId[address(msg.sender)]) == uint256(holderId[address(arg1)]):
            return 0
        uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) -= arg2
        uint256(allowance[arg3][5][uint256(stor4[address(arg1)])].field_0) += arg2
        emit Transfer(arg2, Array(len=arg4.length, data=arg4[all]), address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg3);
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg1 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg1)]) = stor2.length
        if uint8(sub_aeadd049[('map', ('param', 'arg3'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) < arg2:
            return 0
        if uint256(holderId[address(msg.sender)]) == stor2.length:
            return 0
        uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) -= arg2
        uint256(allowance[arg3][5][stor2.length].field_0) += arg2
        emit Transfer(arg2, Array(len=arg4.length, data=arg4[all]), address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[stor2.length].field_256), arg3);
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[stor2.length].field_256), arg2
            require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2, bytes32 arg3) payable {
    if uint256(holderId[address(arg1)]) != 0:
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) < arg2:
            return 0
        if uint256(holderId[address(msg.sender)]) == uint256(holderId[address(arg1)]):
            return 0
        uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) -= arg2
        uint256(allowance[arg3][5][uint256(stor4[address(arg1)])].field_0) += arg2
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg2,
                      64,
                      0,
                      address(owner[uint256(stor4[address(msg.sender)])].field_256),
                      address(owner[uint256(stor4[address(arg1)])].field_256),
                      arg3,
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg1 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg1)]) = stor2.length
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg3].field_160):
            if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                return 0
        if arg2 < 1:
            return 0
        if uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) < arg2:
            return 0
        if uint256(holderId[address(msg.sender)]) == stor2.length:
            return 0
        uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])].field_0) -= arg2
        uint256(allowance[arg3][5][stor2.length].field_0) += arg2
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg2,
                      64,
                      0,
                      address(owner[uint256(stor4[address(msg.sender)])].field_256),
                      address(owner[stor2.length].field_256),
                      arg3,
        if address(proxies[arg3].field_0) != 0:
            call address(proxies[arg3].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[stor2.length].field_256), arg2
            require ext_call.success
    return 1
}

function proxyTransferFromWithReference(address arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5) payable {
    if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
        return 0
    if uint256(holderId[address(arg2)]) != 0:
        if uint8(sub_aeadd049[('map', ('param', 'arg4'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[tx.origin])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == uint256(holderId[address(arg2)]):
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][uint256(stor4[address(arg2)])].field_0) += arg3
        emit Transfer(arg3, Array(len=arg5.length, data=arg5[all]), address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[uint256(stor4[address(arg2)])].field_256), arg4);
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[uint256(stor4[address(arg2)])].field_256), arg3
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg2 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg2)]) = stor2.length
        if uint8(sub_aeadd049[('map', ('param', 'arg4'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[tx.origin])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == stor2.length:
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][stor2.length].field_0) += arg3
        emit Transfer(arg3, Array(len=arg5.length, data=arg5[all]), address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[stor2.length].field_256), arg4);
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[stor2.length].field_256), arg3
            require ext_call.success
    uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[tx.origin])].field_0) -= arg3
    return 1
}

function sub_2c8ed735(?) payable {
    if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
        return 0
    if uint256(holderId[address(arg2)]) != 0:
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[tx.origin])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == uint256(holderId[address(arg2)]):
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][uint256(stor4[address(arg2)])].field_0) += arg3
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg3,
                      64,
                      0,
                      address(owner[uint256(stor4[address(arg1)])].field_256),
                      address(owner[uint256(stor4[address(arg2)])].field_256),
                      arg4,
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[uint256(stor4[address(arg2)])].field_256), arg3
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg2 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg2)]) = stor2.length
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[tx.origin])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[tx.origin])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == stor2.length:
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][stor2.length].field_0) += arg3
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg3,
                      64,
                      0,
                      address(owner[uint256(stor4[address(arg1)])].field_256),
                      address(owner[stor2.length].field_256),
                      arg4,
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[stor2.length].field_256), arg3
            require ext_call.success
    uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[tx.origin])].field_0) -= arg3
    return 1
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5) payable {
    if uint256(holderId[address(arg2)]) != 0:
        if uint8(sub_aeadd049[('map', ('param', 'arg4'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(msg.sender)])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == uint256(holderId[address(arg2)]):
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][uint256(stor4[address(arg2)])].field_0) += arg3
        emit Transfer(arg3, Array(len=arg5.length, data=arg5[all]), address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[uint256(stor4[address(arg2)])].field_256), arg4);
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[uint256(stor4[address(arg2)])].field_256), arg3
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg2 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg2)]) = stor2.length
        if uint8(sub_aeadd049[('map', ('param', 'arg4'), ('name', 'sub_aeadd049', 1))]):
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(msg.sender)])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == stor2.length:
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][stor2.length].field_0) += arg3
        emit Transfer(arg3, Array(len=arg5.length, data=arg5[all]), address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[stor2.length].field_256), arg4);
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[stor2.length].field_256), arg3
            require ext_call.success
    uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(msg.sender)])].field_0) -= arg3
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    if uint256(holderId[address(arg2)]) != 0:
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(msg.sender)])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == uint256(holderId[address(arg2)]):
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][uint256(stor4[address(arg2)])].field_0) += arg3
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg3,
                      64,
                      0,
                      address(owner[uint256(stor4[address(arg1)])].field_256),
                      address(owner[uint256(stor4[address(arg2)])].field_256),
                      arg4,
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[uint256(stor4[address(arg2)])].field_256), arg3
            require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg2 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg2)]) = stor2.length
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(msg.sender)])].field_0) < arg3:
            return 0
        if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]) != 0:
            call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg4]).0xa25035b with:
                 gas gas_remaining - 25050 wei
                args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
        else:
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
        if uint8(proxies[arg4].field_160):
            if not uint8(proxies[arg4][1][address(msg.sender)].field_0):
                return 0
        if arg3 < 1:
            return 0
        if uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) < arg3:
            return 0
        if uint256(holderId[address(arg1)]) == stor2.length:
            return 0
        uint256(allowance[arg4][5][uint256(stor4[address(arg1)])].field_0) -= arg3
        uint256(allowance[arg4][5][stor2.length].field_0) += arg3
        emit Transfer(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5):
                      arg3,
                      64,
                      0,
                      address(owner[uint256(stor4[address(arg1)])].field_256),
                      address(owner[stor2.length].field_256),
                      arg4,
        if address(proxies[arg4].field_0) != 0:
            call address(proxies[arg4].field_0).emitTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args address(owner[uint256(stor4[address(arg1)])].field_256), address(owner[stor2.length].field_256), arg3
            require ext_call.success
    uint256(allowance[arg4][5][uint256(stor4[address(arg1)])][1][uint256(stor4[address(msg.sender)])].field_0) -= arg3
    return 1
}

function proxyApprove(address arg1, uint256 arg2, bytes32 arg3) payable {
    if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
        return 0
    if uint256(holderId[address(arg1)]) != 0:
        if uint256(holderId[tx.origin]) != 0:
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                    call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if uint256(holderId[tx.origin]) == uint256(holderId[address(arg1)]):
                return 0
            uint256(allowance[arg3][5][uint256(stor4[tx.origin])][1][uint256(stor4[address(arg1)])].field_0) = arg2
            emit Approve(arg2, address(owner[uint256(stor4[tx.origin])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[uint256(stor4[tx.origin])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
                require ext_call.success
        else:
            stor2.length++
            uint256(owner[stor2.length].field_256) = tx.origin or Mask(96, 160, uint256(owner[stor2.length].field_256))
            uint256(owner[stor2.length].field_0) = 1
            uint256(holderId[tx.origin]) = stor2.length
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[stor2.length][arg3]):
                call address(sub_c372fe16[stor2.length][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], stor2.length)
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[stor2.length]):
                    call address(sub_c372fe16[stor2.length]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], stor2.length)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if stor2.length == uint256(holderId[address(arg1)]):
                return 0
            uint256(allowance[arg3][5][stor2.length][1][uint256(stor4[address(arg1)])].field_0) = arg2
            emit Approve(arg2, address(owner[stor2.length].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[stor2.length].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
                require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg1 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg1)]) = stor2.length
        if uint256(holderId[tx.origin]) != 0:
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]):
                call address(sub_c372fe16[uint256(stor4[tx.origin])][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[uint256(stor4[tx.origin])]):
                    call address(sub_c372fe16[uint256(stor4[tx.origin])]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], uint256(holderId[tx.origin]))
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if uint256(holderId[tx.origin]) == stor2.length:
                return 0
            uint256(allowance[arg3][5][uint256(stor4[tx.origin])][1][stor2.length].field_0) = arg2
            emit Approve(arg2, address(owner[uint256(stor4[tx.origin])].field_256), address(owner[stor2.length].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[uint256(stor4[tx.origin])].field_256), address(owner[stor2.length].field_256), arg2
                require ext_call.success
        else:
            stor2.length++
            uint256(owner[stor2.length].field_256) = tx.origin or Mask(96, 160, uint256(owner[stor2.length].field_256))
            uint256(owner[stor2.length].field_0) = 1
            uint256(holderId[tx.origin]) = stor2.length
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[stor2.length][arg3]):
                call address(sub_c372fe16[stor2.length][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], stor2.length)
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[stor2.length]):
                    call address(sub_c372fe16[stor2.length]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], stor2.length)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if stor2.length == stor2.length:
                return 0
            uint256(allowance[arg3][5][stor2.length][1][stor2.length].field_0) = arg2
            emit Approve(arg2, address(owner[stor2.length].field_256), address(owner[stor2.length].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[stor2.length].field_256), address(owner[stor2.length].field_256), arg2
                require ext_call.success
    return 1
}

function approve(address arg1, uint256 arg2, bytes32 arg3) payable {
    if uint256(holderId[address(arg1)]) != 0:
        if uint256(holderId[address(msg.sender)]) != 0:
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                    call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if uint256(holderId[address(msg.sender)]) == uint256(holderId[address(arg1)]):
                return 0
            uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])][1][uint256(stor4[address(arg1)])].field_0) = arg2
            emit Approve(arg2, address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
                require ext_call.success
        else:
            stor2.length++
            uint256(owner[stor2.length].field_256) = msg.sender or Mask(96, 160, uint256(owner[stor2.length].field_256))
            uint256(owner[stor2.length].field_0) = 1
            uint256(holderId[address(msg.sender)]) = stor2.length
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[stor2.length][arg3]):
                call address(sub_c372fe16[stor2.length][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], stor2.length)
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[stor2.length]):
                    call address(sub_c372fe16[stor2.length]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], stor2.length)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if stor2.length == uint256(holderId[address(arg1)]):
                return 0
            uint256(allowance[arg3][5][stor2.length][1][uint256(stor4[address(arg1)])].field_0) = arg2
            emit Approve(arg2, address(owner[stor2.length].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[stor2.length].field_256), address(owner[uint256(stor4[address(arg1)])].field_256), arg2
                require ext_call.success
    else:
        stor2.length++
        uint256(owner[stor2.length].field_256) = arg1 or Mask(96, 160, uint256(owner[stor2.length].field_256))
        uint256(owner[stor2.length].field_0) = 1
        uint256(holderId[address(arg1)]) = stor2.length
        if uint256(holderId[address(msg.sender)]) != 0:
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]):
                call address(sub_c372fe16[uint256(stor4[address(msg.sender)])][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[uint256(stor4[address(msg.sender)])]):
                    call address(sub_c372fe16[uint256(stor4[address(msg.sender)])]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], uint256(holderId[address(msg.sender)]))
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if uint256(holderId[address(msg.sender)]) == stor2.length:
                return 0
            uint256(allowance[arg3][5][uint256(stor4[address(msg.sender)])][1][stor2.length].field_0) = arg2
            emit Approve(arg2, address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[stor2.length].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[uint256(stor4[address(msg.sender)])].field_256), address(owner[stor2.length].field_256), arg2
                require ext_call.success
        else:
            stor2.length++
            uint256(owner[stor2.length].field_256) = msg.sender or Mask(96, 160, uint256(owner[stor2.length].field_256))
            uint256(owner[stor2.length].field_0) = 1
            uint256(holderId[address(msg.sender)]) = stor2.length
            if uint8(stor1[('map', ('param', 'arg3'), ('name', 'allowance', 5))].field_0):
                return 0
            if address(sub_c372fe16[stor2.length][arg3]):
                call address(sub_c372fe16[stor2.length][arg3]).0xa25035b with:
                     gas gas_remaining - 25050 wei
                    args sha3(call.data[0 len calldata.size], stor2.length)
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
            else:
                if address(sub_c372fe16[stor2.length]):
                    call address(sub_c372fe16[stor2.length]).0xa25035b with:
                         gas gas_remaining - 25050 wei
                        args sha3(call.data[0 len calldata.size], stor2.length)
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
            if uint8(proxies[arg3].field_160):
                if not uint8(proxies[arg3][1][address(msg.sender)].field_0):
                    return 0
            if not uint256(allowance[arg3].field_0):
                return 0
            if stor2.length == stor2.length:
                return 0
            uint256(allowance[arg3][5][stor2.length][1][stor2.length].field_0) = arg2
            emit Approve(arg2, address(owner[stor2.length].field_256), address(owner[stor2.length].field_256), arg3);
            if address(proxies[arg3].field_0):
                call address(proxies[arg3].field_0).emitApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(owner[stor2.length].field_256), address(owner[stor2.length].field_256), arg2
                require ext_call.success
    return 1
}



}
