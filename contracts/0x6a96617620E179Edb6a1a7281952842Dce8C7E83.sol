contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
array of struct stor6;
mapping of uint256 stor8;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;

function _fallback() payable {
    mem[96 len -1704] = code.data[2379 len -1704]
    mem[64] = -1608
    stor4 = msg.sender or Mask(96, 160, stor4)
    if mem[128] != 0:
        if mem[236 len 20] != 0:
            stor3 = mem[224]
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                idx = (3 * stor6.length) + 3
                while 3 * stor6.length > idx:
                    address(stor6[idx].field_0) = 0
                    stor6[idx].field_256 = 0
                    stor6[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor6.length < stor6.length
            stor6[stor6.length].field_0 = mem[224]
            storF652[stor6.length] = mem[128]
            stor8[mem[236 len 20]] = mem[128]
        else:
            stor3 = msg.sender or Mask(96, 160, stor3)
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                idx = (3 * stor6.length) + 3
                while 3 * stor6.length > idx:
                    address(stor6[idx].field_0) = 0
                    stor6[idx].field_256 = 0
                    stor6[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor6.length < stor6.length
            stor6[stor6.length].field_0 = msg.sender or Mask(96, 160, stor6[stor6.length].field_0)
            storF652[stor6.length] = mem[128]
            stor8[address(msg.sender)] = mem[128]
    else:
        if mem[236 len 20] != 0:
            stor3 = mem[224]
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                idx = (3 * stor6.length) + 3
                while 3 * stor6.length > idx:
                    address(stor6[idx].field_0) = 0
                    stor6[idx].field_256 = 0
                    stor6[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor6.length < stor6.length
            stor6[stor6.length].field_0 = mem[224]
            storF652[stor6.length] = 1000
            stor8[mem[236 len 20]] = 1000
        else:
            stor3 = msg.sender or Mask(96, 160, stor3)
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                idx = (3 * stor6.length) + 3
                while 3 * stor6.length > idx:
                    address(stor6[idx].field_0) = 0
                    stor6[idx].field_256 = 0
                    stor6[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor6.length < stor6.length
            stor6[stor6.length].field_0 = msg.sender or Mask(96, 160, stor6[stor6.length].field_0)
            storF652[stor6.length] = 1000
            stor8[address(msg.sender)] = 1000
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
    return code.data[675 len 1704]
}



// =====================  Runtime code  =====================


address sub_e33247eaAddress;
array of uint256 name;
array of uint256 symbol;
address issuerAddress;
address stor4;
uint256 sub_b41448f8;
array of struct stor6;
uint256 sub_169770a7;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;

function name() payable {
    return name[0 len name.length]
}

function sub_169770a7(?) payable {
    return sub_169770a7
}

function issuer() payable {
    return issuerAddress
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b41448f8(?) payable {
    return sub_b41448f8
}

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function sub_e33247ea(?) payable {
    return sub_e33247eaAddress
}

function kill() payable {
    if stor4 != msg.sender:
    selfdestruct(stor4)
}

function _fallback() payable {
  stop
}

function sub_76a39356(?) payable {
    require arg1 < stor6.length
    return stor6[arg1].field_0, storF652[arg1], storF652[arg1]
}

function sub_96d7ac7a(?) payable {
    require issuerAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function sub_6eafad1c(?) payable {
    sub_b41448f8 = arg1
    call sub_e33247eaAddress.0x489ffdbc with:
         gas gas_remaining - 25050 wei
        args address(arg2), arg1 - sub_b41448f8
    require ext_call.success
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
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = (3 * stor6.length) + 3
        while 3 * stor6.length > idx:
            stor6[idx].field_0 = 0
            stor6[idx].field_256 = 0
            stor6[idx].field_512 = 0
            idx = idx + 1
            continue 
    require stor6.length < stor6.length
    stor6[stor6.length].field_0 = arg1 or Mask(96, 160, stor6[stor6.length].field_0)
    stor6[stor6.length].field_256 = arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return stor6.length
}



}
