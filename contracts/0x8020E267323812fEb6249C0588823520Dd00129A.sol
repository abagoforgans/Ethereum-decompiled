contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor13;
mapping of uint256 stor15;

function _fallback() payable {
    mem[96 len -1645] = code.data[2165 len -1645]
    mem[64] = -1549
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor0 = mem[96]
    if mem[236 len 20]:
        stor3 = mem[224]
        stor8 = 1
        stor13[mem[236 len 20]] = mem[128]
        mem[32] = 15
        stor15[stor8] = mem[224]
    else:
        stor3 = msg.sender or Mask(96, 160, stor3)
        stor8 = 1
        stor13[address(msg.sender)] = mem[128]
        mem[32] = 15
        stor15[stor8] = msg.sender or Mask(96, 160, stor15[stor8])
    stor7 = mem[128]
    mem[0] = 1
    stor1.length = (2 * mem[mem[160] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[520 len 1645]
}



// =====================  Runtime code  =====================


address sub_dee35eceAddress;
array of uint256 name;
array of uint256 symbol;
address issuerAddress;
address stor4;
uint256 sub_d1e93151;
uint256 sub_4f7672f4;
uint256 sub_ec727e13;
uint256 sub_215d1343;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;
mapping of address sub_76a39356;

function name() payable {
    return name[0 len name.length]
}

function issuer() payable {
    return issuerAddress
}

function sub_215d1343(?) payable {
    return sub_215d1343
}

function sub_4f7672f4(?) payable {
    return sub_4f7672f4
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function sub_76a39356(?) payable {
    return address(sub_76a39356[arg1])
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function sub_d1e93151(?) payable {
    return sub_d1e93151
}

function sub_dee35ece(?) payable {
    return sub_dee35eceAddress
}

function sub_ec727e13(?) payable {
    return sub_ec727e13
}

function kill() payable {
    if stor4 != msg.sender:
    selfdestruct(stor4)
}

function _fallback() payable {
  stop
}

function sub_a4ab866a(?) payable {
    if arg1 > sub_d1e93151:
        sub_d1e93151 = arg1
}

function sub_96d7ac7a(?) payable {
    require issuerAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function freezeAccount(address arg1, bool arg2) payable {
    require issuerAddress == msg.sender
    uint256(frozenAccount[address(arg1)]) = arg2 or Mask(248, 8, uint256(frozenAccount[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require not uint8(frozenAccount[address(msg.sender)])
    if 0 == balanceOf[address(arg1)]:
        sub_215d1343++
        uint256(sub_76a39356[stor8 + 1]) = arg1 or Mask(96, 160, uint256(sub_76a39356[stor8 + 1]))
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function sub_57990807(?) payable {
    stor9 = sub_d1e93151 - sub_4f7672f4
    sub_4f7672f4 = sub_d1e93151
    stor10 = sub_d1e93151 - sub_4f7672f4 / sub_ec727e13
    s = 0
    idx = 0
    while idx < sub_215d1343:
        stor12 = address(sub_76a39356[idx + 1])
        mem[0] = address(sub_76a39356[idx + 1])
        mem[32] = 13
        stor11 = balanceOf[address(stor15[idx + 1])] * stor10
        mem[96] = 0x489ffdbc00000000000000000000000000000000000000000000000000000000
        mem[100] = address(sub_76a39356[idx + 1])
        mem[132] = balanceOf[address(stor15[idx + 1])] * stor10
        call sub_dee35eceAddress.0x489ffdbc with:
             gas gas_remaining - 25050 wei
            args address(sub_76a39356[idx + 1]), balanceOf[address(stor15[idx + 1])] * stor10
        require ext_call.success
        s = sub_dee35eceAddress
        idx = idx + 1
        continue 
}



}
