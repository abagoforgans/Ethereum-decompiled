contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    call address(code.data[6556 len 32]).0x9fcdee9d with:
         gas gas_remaining - 25050 wei
        args code.data[6588 len 32]
    require ext_call.success
    call address(stor0).getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'registry/vendor'
    call address(ext_call.return_data[0]).0xee54d54f with:
         gas gas_remaining - 25050 wei
        args address(code.data[6556 len 32])
    require ext_call.return_data[0]
    call address(code.data[6556 len 32]).0x640547d9 with:
         gas gas_remaining - 25050 wei
        args code.data[6588 len 32]
    require ext_call.success
    require ext_call.return_data[0]
    call address(code.data[6556 len 32]).0x198876d8 with:
         gas gas_remaining - 25050 wei
        args code.data[6588 len 32], code.data[6652 len 32], code.data[6620 len 32], address(ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[0]
    stor1 = ext_call.return_data[0] or Mask(96, 160, stor1)
    uint256(stor0) = code.data[6524 len 32] or Mask(96, 160, uint256(stor0))
    return code.data[734 len 5790]
}



// =====================  Runtime code  =====================


address configAddress;
address owner;
uint256 stor1;
bool stor2; offset 256
uint8 sub_9fc9c4b8;
uint8 stor2; offset 8
address stor2;
address stor2; offset 16
uint256 stor2;
uint256 stor2; offset 16
uint256 stor3;
uint256 stor4;
uint256 stor5;
bool stor6; offset 256
uint8 stor6;
uint8 stor6; offset 8
address stor6;
address stor6; offset 16
uint256 stor6;
uint256 stor6; offset 16
uint256 stor7;
uint256 stor8;
uint256 stor9;

function getConfigAddress() payable {
    return configAddress
}

function config() payable {
    return configAddress
}

function owner() payable {
    return address(owner)
}

function sub_9fc9c4b8(?) payable {
    return sub_9fc9c4b8
}

function sub_695ae07d(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    if not uint8(stor6.field_8):
        return 0
    if not uint8(stor6.field_0):
        return 0
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    selfdestruct(ext_call.return_data[12 len 20])
}

function _fallback() payable {
  stop
}

function sub_691d509b(?) payable {
    return sub_9fc9c4b8, sub_9fc9c4b8, address(stor2.field_0), stor3, stor4, stor5
}

function sub_804f2422(?) payable {
    if not uint8(stor2.field_8):
        return uint8(stor2.field_8)
    return sub_9fc9c4b8
}

function sub_57f25c7f(?) payable {
    return uint8(stor6.field_0), uint8(stor6.field_0), address(stor6.field_0), stor7, stor8, stor9
}

function sub_122e351b(?) payable {
    if not uint8(stor6.field_8):
        return uint8(stor6.field_8)
    return uint8(stor6.field_0)
}

function sub_8edc83bc(?) payable {
    require sub_9fc9c4b8
    require msg.sender == address(stor2.field_16)
    uint8(stor2.field_8) = 1
}

function sub_a3e71bed(?) payable {
    require uint8(stor6.field_0)
    require msg.sender == address(stor6.field_16)
    uint8(stor6.field_8) = 1
}

function isAdmin(address arg1) payable {
    call configAddress.0x24d7806c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d0f0e22f(?) payable {
    call configAddress.0xa3f92bc6 with:
         gas gas_remaining - 25050 wei
        args ('settings/nonmintsku' << 104)
    require ext_call.success
    return ext_call.return_data[0]
}

function txFee() payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('settings/txfee' << 144)
    require ext_call.success
    return ext_call.return_data[0]
}

function getBase() payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_65448a76(?) payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c1a27089(?) payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('settings/recastfee' << 112)
    require ext_call.success
    return ext_call.return_data[0]
}

function redemptionFee() payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('settings/redemptionfee' << 80)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4a619fa6(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_82e717f7(?) payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('settings/confirmations' << 80)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4e03ab49(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function billingPeriod() payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d3dd22da(?) payable {
    call configAddress.getConfigEntryInt(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f74786665656d6178000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[0]
}

function goldRegistry() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_46396e18(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_694d98e5(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f7265636173740000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function vendorRegistry() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function minterContract() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function auditorRegistry() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function custodianRegistry() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function isGoldRegistry(address arg1) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    return (ext_call.return_data[12 len 20] == arg1)
}

function sub_62f006f9(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x468e5fc3 with:
         gas gas_remaining - 25050 wei
    require ext_call.return_data[0]
}

function sub_947a4bbe(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x87352ed5 with:
         gas gas_remaining - 25050 wei
    require ext_call.return_data[0]
}

function isVendor(address arg1) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0xee54d54f with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function isAuditor(address arg1) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x49b90557 with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function isCustodian(address arg1) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function getOwner() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    return ext_call.return_data[12 len 20]
}

function isOwner() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    return 1
}

function getFeeInfo() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0xb0b89675 with:
         gas gas_remaining - 25050 wei
        args this.address
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function setOwner(address arg1) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    if msg.sender == ext_call.return_data[12 len 20]:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_5add7457(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    if msg.sender == ext_call.return_data[12 len 20]:
        require sub_9fc9c4b8
        Mask(176, 0, stor2.field_0) = 0
        stor3 = 0
        stor4 = 0
        stor5 = 0
}

function getInfo() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getInfo(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    return ext_call.return_data[31 len 1], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function sub_fe188102(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    if not uint8(stor2.field_8):
        return 0
    if not sub_9fc9c4b8:
        return 0
    Mask(176, 0, stor2.field_0) = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    return 1
}

function getParties() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0xc4336036 with:
         gas gas_remaining - 25050 wei
        args this.address
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function sub_e6a29666(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    if not uint8(stor6.field_0):
        return 0
    if stor7 > block.timestamp:
        return 0
    Mask(176, 0, stor6.field_0) = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    return 1
}

function mint() payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    if ext_call.return_data[12 len 20] != msg.sender:
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x511cef7a with:
         gas gas_remaining - 25050 wei
    require ext_call.return_data[0]
}

function transfer(address arg1) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    if msg.sender == ext_call.return_data[12 len 20]:
        call configAddress.getConfigEntryAddr(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0x5d77a89b with:
             gas gas_remaining - 25050 wei
            args address(this.address), arg1
        require ext_call.return_data[0]
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_0ff022d4(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    if msg.sender == ext_call.return_data[12 len 20]:
        call configAddress.getConfigEntryAddr(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).getStatus(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require 2 == ext_call.return_data[31 len 1]
        require sub_9fc9c4b8 != 1
        sub_9fc9c4b8 = 1
        uint8(stor2.field_8) = 0
        Mask(240, 0, stor2.field_16) = Mask(240, 0, arg1)
        stor2.field_256 % 1 = 0
        stor3 = arg2
        stor4 = arg3
        stor5 = arg4
}

function sub_d569e6f1(?) payable {
    call configAddress.getConfigEntryAddr(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x1a8b3383 with:
         gas gas_remaining - 25050 wei
        args this.address
    if msg.sender == ext_call.return_data[12 len 20]:
        call configAddress.getConfigEntryAddr(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).getStatus(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require 2 == ext_call.return_data[31 len 1]
        require uint8(stor6.field_0) != 1
        call configAddress.getConfigEntryAddr(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0xaae36ca8 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.return_data[0]
        uint8(stor6.field_0) = 1
        uint8(stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = Mask(240, 0, arg1)
        stor6.field_256 % 1 = 0
        stor7 = arg2
        stor8 = arg3
        stor9 = arg4
}



}
