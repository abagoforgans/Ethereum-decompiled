contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;
uint32 stor3; offset 8
uint256 stor7;
uint256 stor29;
uint128 stor30; offset 160
uint256 stor30;
uint256 stor32;

function _fallback() payable {
    stor0 = 0x346a16921af2db3788d29fb171604f1251a25abf
    stor1 = 0xd97c2ecbd1ba8c1785cf416a7111197fd677f638
    stor2 = 10^18
    uint8(stor3.field_0) = 0
    stor3.field_8 % 16777216 = 390625
    stor7 = this.address or Mask(96, 160, stor7)
    stor32 = 1
    stor29 = code.data[9704 len 32] or Mask(96, 160, stor29)
    uint256(stor30.field_0) = Mask(96, 0, stor30.field_160)
    return code.data[200 len 9504]
}



// =====================  Runtime code  =====================


#
#  - CreateProposal(string arg1, string arg2, string arg3, uint32 arg4, string arg5, string arg6, string arg7, uint32 arg8, uint32 arg9)
#  - contractPartOne(uint256 arg1)
#
const GetContractAddr = address(this.address)


address stor0;
address stor1;
uint256 stor2;
uint32 stor3;
uint32 stor3; offset 32
uint32 stor3; offset 64
uint256 stor3; offset 64
uint256 stor3; offset 32
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
mapping of struct contractPartTwo;
array of struct contractPartThree;
mapping of struct settlement;
mapping of struct sub_bad6e0aa;
mapping of struct deposits;
mapping of struct status;
uint32 stor20; offset 32
uint32 stor20; offset 64
uint8 stor24;
uint8 stor24; offset 8
uint32 stor24; offset 16
uint32 stor24; offset 48
uint256 stor24; offset 80
uint256 stor24; offset 48
uint8 stor25;
uint32 stor25; offset 8
uint32 stor25; offset 40
uint256 stor25;
uint8 stor26;
uint8 stor26; offset 8
address stor26; offset 16
uint256 stor26; offset 16
uint256 stor26; offset 8
uint256 stor26;
address stor27;
uint8 stor28;
uint8 stor28; offset 8
uint8 stor28; offset 16
uint8 stor28; offset 24
uint32 stor28;
address stor29;
address stor30;
uint8 stor31; offset 160
uint128 stor31; offset 168
address stor31;
uint256 stor32;

function status(uint256 arg1) payable {
    return bool(status[arg1].field_0), bool(status[arg1].field_8), bool(status[arg1].field_16), bool(status[arg1].field_24)
}

function settlement(uint256 arg1) payable {
    return bool(settlement[arg1].field_0), bool(settlement[arg1].field_8), settlement[arg1].field_0, settlement[arg1].field_48
}

function contractPartTwo(uint256 arg1) payable {
    return contractPartTwo[arg1].field_0, contractPartTwo[arg1].field_0, contractPartTwo[arg1].field_64
}

function contractPartThree(uint256 arg1) payable {
    mem[224] = contractPartThree[arg1].field_0
    idx = 224
    s = 0
    while contractPartThree[arg1].length + 224 > idx + 32:
        mem[idx + 32] = contractPartThree[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + 224] = contractPartThree[arg1][1].length
    mem[contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + 256] = contractPartThree[arg1][1].field_0
    idx = contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + 256
    s = 0
    while contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + contractPartThree[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = contractPartThree[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + contractPartThree[arg1][1].length + (floor32(contractPartThree[arg1][1].length - 1) + -contractPartThree[arg1][1].length + 32 % 32) + 288] = contractPartThree[arg1][2].field_0
    idx = contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + contractPartThree[arg1][1].length + (floor32(contractPartThree[arg1][1].length - 1) + -contractPartThree[arg1][1].length + 32 % 32) + 288
    s = 0
    while contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + contractPartThree[arg1][1].length + (floor32(contractPartThree[arg1][1].length - 1) + -contractPartThree[arg1][1].length + 32 % 32) + contractPartThree[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = contractPartThree[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=contractPartThree[arg1].length, data=mem[224 len contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + contractPartThree[arg1][1].length + (floor32(contractPartThree[arg1][1].length - 1) + -contractPartThree[arg1][1].length + 32 % 32) + 32], contractPartThree[arg1][2].length, mem[contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + contractPartThree[arg1][1].length + (floor32(contractPartThree[arg1][1].length - 1) + -contractPartThree[arg1][1].length + 32 % 32) + 288 len contractPartThree[arg1][2].length + (floor32(contractPartThree[arg1][2].length - 1) + -contractPartThree[arg1][2].length + 32 % 32)]), 
           contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + 128,
           contractPartThree[arg1].length + (floor32(contractPartThree[arg1].length - 1) + -contractPartThree[arg1].length + 32 % 32) + contractPartThree[arg1][1].length + (floor32(contractPartThree[arg1][1].length - 1) + -contractPartThree[arg1][1].length + 32 % 32) + 160
}

function deposits(uint256 arg1) payable {
    return bool(deposits[arg1].field_0), bool(deposits[arg1].field_8), deposits[arg1].field_0, deposits[arg1].field_256
}

function sub_bad6e0aa(?) payable {
    return bool(sub_bad6e0aa[arg1].field_0), sub_bad6e0aa[arg1].field_0, sub_bad6e0aa[arg1].field_40
}

function _fallback() payable {
    revert 
}

function Reset() payable {
    require msg.sender == stor29
    if 1 == bool(uint8(stor26.field_0)):
        require bool(uint8(stor24.field_0)) != 0
    if 1 == bool(uint8(stor26.field_8)):
        require bool(uint8(stor24.field_8)) != 0
    uint32(stor28.field_0) = 0
    stor32++
}

function Register(address arg1) payable {
    call arg1.0xaeb4f0d3 with:
         gas gas_remaining - 25050 wei
        args stor7, stor30
    require ext_call.success
    address(stor31.field_0) = arg1
    uint8(stor31.field_160) = 1
    Mask(88, 0, stor31.field_168) = Mask(88, 168, arg1) >> 168
}

function OwnerDeposit() payable {
    require bool(uint8(stor28.field_8)) != 0
    require stor29 == msg.sender
    require stor2 * uint32(stor20.field_64) == msg.value
    require bool(deposits[stor32].field_8) != 1
    uint8(stor24.field_8) = 0
    stor27 = stor29
    uint8(stor26.field_8) = 1
    deposits[stor32].field_8 = 1
    deposits[stor32].field_256 = stor29
}

function CounterPartyDeposit() payable {
    require bool(uint8(stor28.field_8)) != 0
    require stor29 != msg.sender
    require uint32(stor20.field_32) * stor2 == msg.value
    require bool(deposits[stor32].field_0) != 1
    uint8(stor24.field_0) = 0
    uint8(stor26.field_0) = 1
    Mask(248, 0, stor26.field_8) = uint8(stor26.field_8)
    Mask(240, 0, stor26.field_16) = Mask(240, 0, msg.sender)
    deposits[stor32].field_0 = 1
    deposits[stor32].field_16 = Mask(240, 0, msg.sender)
}

function Dispute() payable {
    if stor29 != msg.sender:
        require msg.sender == address(stor26.field_16)
    require bool(uint8(stor28.field_0)) != 1
    require bool(uint8(stor24.field_0)) != 1
    require bool(uint8(stor24.field_8)) != 1
    if 0 == bool(uint8(stor26.field_8)):
        require stor29 != msg.sender
    if 0 == bool(uint8(stor26.field_0)):
        require address(stor26.field_16) != msg.sender
    if bool(uint8(stor26.field_8)) != 1:
        require 1 == bool(uint8(stor26.field_0))
    uint8(stor28.field_0) = 1
    status[stor32].field_0 = 1
}

function Settle(uint32 arg1, uint32 arg2) payable {
    require msg.sender == stor29
    require bool(uint8(stor28.field_0)) != 1
    require bool(uint8(stor28.field_8)) != 0
    require bool(uint8(stor28.field_16)) != 1
    require bool(uint8(stor26.field_0)) != 0
    require bool(uint8(stor26.field_8)) != 0
    require arg1 >= 100
    require arg2 >= 100
    uint32(stor24.field_16) = arg1
    Mask(208, 0, stor24.field_48) = Mask(208, 0, arg2)
    Mask(176, 0, stor24.field_80) = Mask(176, 64, arg1) >> 64
    Mask(176, 0, stor24.field_80) = 0
    settlement[stor32].field_16 = Mask(240, 0, arg1)
    settlement[stor32].field_48 = Mask(208, 0, arg2)
    uint8(stor28.field_16) = 1
    status[stor32].field_16 = 1
}

function Arbitrate(uint32 arg1, uint32 arg2, bool arg3) payable {
    require msg.sender == stor1
    require bool(uint8(stor28.field_8)) != 0
    require bool(uint8(stor28.field_0)) != 0
    require bool(uint8(stor28.field_24)) != 1
    require arg1 >= 100
    require arg2 >= 100
    uint256(stor25.field_0) = arg3 or arg2 << 40 or Mask(184, 64, arg1) << 8 or Mask(184, 72, uint256(stor25.field_0)) or Mask(184, 72, uint8(stor25.field_0)) or uint32(arg1) << 8 or Mask(248, 8, uint8(stor25.field_0))
    sub_bad6e0aa[stor32].field_8 = Mask(248, 0, arg1)
    sub_bad6e0aa[stor32].field_40 = Mask(216, 0, arg2)
    sub_bad6e0aa[stor32].field_0 = arg3 or Mask(248, 8, sub_bad6e0aa[stor32].field_0)
    uint8(stor28.field_24) = 1
    status[stor32].field_24 = 1
}

function Refund() payable {
    require bool(uint8(stor28.field_8)) != 0
    require bool(uint8(stor28.field_16)) != 1
    require bool(uint8(stor28.field_24)) != 1
    require bool(uint8(stor28.field_0)) != 1
    if msg.sender == stor29:
        if 0 == bool(uint8(stor26.field_0)):
            if 1 == bool(uint8(stor26.field_8)):
                call stor27 with:
                   value stor2 * uint32(stor20.field_64) wei
                     gas 0 wei
                require ext_call.success
                deposits[stor32].field_8 = 0
                uint8(stor26.field_8) = 0
                settlement[stor32].field_8 = 1
                uint8(stor24.field_8) = 1
    if msg.sender == address(stor26.field_16):
        if 1 == bool(uint8(stor26.field_0)):
            if 0 == bool(uint8(stor26.field_8)):
                call address(stor26.field_16) with:
                   value stor2 * uint32(stor20.field_32) wei
                     gas 0 wei
                require ext_call.success
                deposits[stor32].field_0 = 0
                deposits[stor32].field_16 = 0
                uint256(stor26.field_0) = 0xffffffffffffffffffff0000000000000000000000000000000000000000ff00 and uint256(stor26.field_0)
                uint8(stor24.field_0) = 1
                settlement[stor32].field_0 = 1
}

function Payout() payable {
    require 1 == bool(uint8(stor28.field_16))
    require bool(uint8(stor28.field_0)) != 1
    require bool(uint8(stor28.field_24)) != 1
    if msg.sender == address(stor26.field_16):
        if msg.sender == stor27:
            require bool(uint8(stor24.field_0)) != 0
    else:
        require msg.sender == stor27
        require bool(uint8(stor24.field_0)) != 0
    call stor30.0x953aa435 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    Mask(224, 0, stor3.field_32) = Mask(224, 0, ext_call.return_data[0])
    if msg.sender == stor27:
        if 0 == bool(uint8(stor24.field_8)):
            stor5 = stor2 * uint32(stor24.field_48) / 100
            uint8(stor24.field_8) = 1
            settlement[stor32].field_8 = 1
            call stor27 with:
               value stor5 wei
                 gas 0 wei
            require ext_call.success
    if msg.sender == address(stor26.field_16):
        if 0 == bool(uint8(stor24.field_0)):
            stor4 = stor2 * uint32(uint32(stor24.field_16) * uint32(stor3.field_32)) / uint32(stor3.field_0)
            stor5 = stor2 * uint32(stor24.field_16) / 100
            stor6 = (stor2 * uint32(stor24.field_16) / 100) - (stor2 * uint32(uint32(stor24.field_16) * uint32(stor3.field_32)) / uint32(stor3.field_0))
            uint8(stor24.field_0) = 1
            settlement[stor32].field_0 = 1
            call address(stor26.field_16) with:
               value stor6 wei
                 gas 0 wei
            require ext_call.success
            call stor0 with:
               value stor4 wei
                 gas 0 wei
}

function OWPayoutArb() payable {
    require bool(uint8(stor28.field_0)) != 0
    require bool(uint8(stor28.field_24)) != 0
    require msg.sender == stor27
    call stor30.0x953aa435 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    Mask(224, 0, stor3.field_32) = Mask(224, 0, ext_call.return_data[0])
    call stor30.0x953aa435 with:
         gas gas_remaining - 25050 wei
        args 2
    Mask(192, 0, stor3.field_64) = Mask(192, 0, ext_call.return_data[0])
    if 0 == bool(uint8(stor25.field_0)):
        if 0 == bool(uint8(stor24.field_8)):
            stor5 = uint32(stor25.field_40) * stor2 / 100
            call stor27 with:
               value uint32(stor25.field_40) * stor2 / 100 wei
                 gas 0 wei
            require ext_call.success
            uint8(stor24.field_8) = 1
            settlement[stor32].field_8 = 1
    if 1 == bool(uint8(stor25.field_0)):
        if 0 == bool(uint8(stor24.field_8)):
            stor4 = stor2 * uint32(uint32(stor25.field_40) * uint32(stor3.field_64)) / uint32(stor3.field_0)
            stor5 = stor2 * uint32(stor25.field_40) / 100
            stor6 = (stor2 * uint32(stor25.field_40) / 100) - (stor2 * uint32(uint32(stor25.field_40) * uint32(stor3.field_64)) / uint32(stor3.field_0))
            call stor27 with:
               value (stor2 * uint32(stor25.field_40) / 100) - (stor2 * uint32(uint32(stor25.field_40) * uint32(stor3.field_64)) / uint32(stor3.field_0)) wei
                 gas 0 wei
            require ext_call.success
            call stor0 with:
               value stor4 wei
                 gas 0 wei
            uint8(stor24.field_8) = 1
            settlement[stor32].field_8 = 1
}

function CCPayoutArb() payable {
    require bool(uint8(stor28.field_0)) != 0
    require bool(uint8(stor28.field_24)) != 0
    require msg.sender == address(stor26.field_16)
    call stor30.0x953aa435 with:
         gas gas_remaining - 25050 wei
        args 1
    require ext_call.success
    Mask(224, 0, stor3.field_32) = Mask(224, 0, ext_call.return_data[0])
    call stor30.0x953aa435 with:
         gas gas_remaining - 25050 wei
        args 2
    Mask(192, 0, stor3.field_64) = Mask(192, 0, ext_call.return_data[0])
    if 1 == bool(uint8(stor25.field_0)):
        if 0 == bool(uint8(stor24.field_0)):
            stor4 = stor2 * uint32(uint32(stor25.field_8) * uint32(stor3.field_32)) / uint32(stor3.field_0)
            stor5 = stor2 * uint32(stor25.field_8) / 100
            stor6 = (stor2 * uint32(stor25.field_8) / 100) - (stor2 * uint32(uint32(stor25.field_8) * uint32(stor3.field_32)) / uint32(stor3.field_0))
            uint8(stor24.field_0) = 1
            settlement[stor32].field_0 = 1
            call address(stor26.field_16) with:
               value stor6 wei
                 gas 0 wei
            require ext_call.success
            call stor0 with:
               value stor4 wei
                 gas 0 wei
    if 0 == bool(uint8(stor25.field_0)):
        if 0 == bool(uint8(stor24.field_0)):
            stor4 = stor2 * uint32(uint32(stor25.field_8) * uint32(stor3.field_64)) / uint32(stor3.field_0)
            stor5 = stor2 * uint32(stor25.field_8) / 100
            stor6 = (stor2 * uint32(stor25.field_8) / 100) - (stor2 * uint32(uint32(stor25.field_8) * uint32(stor3.field_64)) / uint32(stor3.field_0))
            uint8(stor24.field_0) = 1
            settlement[stor32].field_0 = 1
            call address(stor26.field_16) with:
               value stor6 wei
                 gas 0 wei
            require ext_call.success
            call stor0 with:
               value stor4 wei
                 gas 0 wei
}



}
