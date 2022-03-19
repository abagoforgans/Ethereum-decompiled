contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor3[address(stor0)] = 10^11
    stor2 = 0
    stor1 = 0
    return code.data[179 len 6665]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_5ebfb0c7;
uint256 assetCount;
array of struct balanceOf;
mapping of struct assets;
array of struct sales;

function sub_1619c8b5(?) payable {
    mem[160] = assets[arg1].field_0
    idx = 160
    s = 0
    while assets[arg1].length + 128 > idx:
        mem[idx + 32] = assets[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=assets[arg1].length, data=mem[160 len assets[arg1].length]), assets[arg1].field_256, assets[arg1].field_512
}

function sub_5ebfb0c7(?) payable {
    return sub_5ebfb0c7
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)].field_0
}

function wallets(address arg1) payable {
    mem[224] = balanceOf[arg1][1].field_0
    idx = 224
    s = 0
    while balanceOf[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = balanceOf[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return balanceOf[arg1].field_0, 
           Array(len=balanceOf[arg1][1].length, data=mem[224 len balanceOf[arg1][1].length + (floor32(balanceOf[arg1][1].length - 1) + -balanceOf[arg1][1].length + 32 % 32)]),
           balanceOf[arg1].field_512
}

function owner() payable {
    return owner
}

function sub_9f198300(?) payable {
    require arg1 < sales.length
    return sales[arg1].field_0, sales[arg1].field_256, sales[arg1].field_768, sales[arg1].field_1024, sales[arg1].field_512
}

function sales(uint256 arg1) payable {
    require arg1 < sales.length
    return sales[arg1].field_0, sales[arg1].field_256, sales[arg1].field_512, sales[arg1].field_768, sales[arg1].field_1024
}

function getUserInfos(address arg1) payable {
    mem[160] = balanceOf[address(arg1)][1].field_0
    idx = 160
    s = 0
    while balanceOf[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = balanceOf[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return balanceOf[address(arg1)].field_0, 
           Array(len=balanceOf[address(arg1)][1].length, data=mem[160 len balanceOf[address(arg1)][1].length]),
           balanceOf[address(arg1)].field_512
}

function assets(uint256 arg1) payable {
    mem[224] = assets[arg1].field_0
    idx = 224
    s = 0
    while assets[arg1].length + 224 > idx + 32:
        mem[idx + 32] = assets[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=assets[arg1].length, data=mem[224 len assets[arg1].length + (floor32(assets[arg1].length - 1) + -assets[arg1].length + 32 % 32)]), 
           assets[arg1].field_256,
           assets[arg1].field_512
}

function sub_dc6f0ec8(?) payable {
    return balanceOf[address(arg1)][3][arg2].field_0
}

function assetCount() payable {
    return assetCount
}

function _fallback() payable {
  stop
}

function sub_1629614e(?) payable {
    require msg.sender == owner
    assets[arg1].field_256 = 1
}

function sub_55b1f24e(?) payable {
    assets[stor2][].field_0 = Array(len=arg1.length, data=arg1[all])
    assets[stor2].field_256 = 0
    assetCount++
}

function sub_67b6cd1e(?) payable {
    balanceOf[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    balanceOf[address(msg.sender)].field_512 = arg2
}

function sub_85b44043(?) payable {
    require msg.sender == owner
    require not assets[arg1].field_256
    balanceOf[stor0][3][arg1].field_0 += arg2
    assets[arg1].field_512 += arg2
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)].field_0 >= arg2
    balanceOf[address(msg.sender)].field_0 -= arg2
    balanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_5ec909ad(?) payable {
    require balanceOf[address(msg.sender)][3][arg2].field_0 >= arg3
    balanceOf[address(msg.sender)][3][arg2].field_0 -= arg3
    balanceOf[address(arg1)][3][arg2].field_0 += arg3
    emit 0x51366374: arg2, arg3, msg.sender, arg1
}

function createSale(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require balanceOf[address(msg.sender)][3][arg1].field_0 >= arg3
    require arg3
    balanceOf[address(msg.sender)][3][arg1].field_0 -= arg3
    require sub_5ebfb0c7 < sales.length
    sales[stor1].field_768 = arg2
    sales[stor1].field_1024 = arg3
    sales[stor1].field_512 = arg1
    sales[stor1].field_0 = msg.sender or Mask(96, 160, sales[stor1].field_0)
    sub_5ebfb0c7++
}

function cancelSale(uint256 arg1) payable {
    require arg1 < sales.length
    require msg.sender == sales[arg1].field_0
    require arg1 < sales.length
    balanceOf[stor5[arg1].field_0][3][stor5[arg1].field_512].field_0 += sales[arg1].field_1024
    sales[arg1].field_0 = 0
    sales[arg1].field_256 = 0
    sales[arg1].field_512 = 0
    sales[arg1].field_768 = 0
    sales[arg1].field_1024 = 0
    sub_5ebfb0c7--
    require sub_5ebfb0c7 - 1 < sales.length
    require arg1 < sales.length
    sales[arg1].field_0 = sales[stor1].field_0
    sales[arg1].field_256 = sales[stor1].field_0
    sales[arg1].field_512 = sales[stor1].field_0
    sales[arg1].field_768 = sales[stor1].field_0
    sales[arg1].field_1024 = sales[stor1].field_0
}

function buy(uint256 arg1, uint256 arg2) payable {
    require arg1 < sales.length
    require balanceOf[address(msg.sender)].field_0 >= sales[arg1].field_768 * arg2
    require arg2
    require arg1 < sales.length
    require sales[arg1].field_1024 >= arg2
    balanceOf[address(msg.sender)].field_0 += -1 * sales[arg1].field_768 * arg2
    balanceOf[address(msg.sender)][3][stor5[arg1].field_512].field_0 += arg2
    balanceOf[stor5[arg1].field_0].field_0 += sales[arg1].field_768 * arg2
    sales[arg1].field_1024 -= arg2
    emit Transfer(arg2, sales[arg1].field_0, msg.sender);
    emit 0x51366374: sales[arg1].field_512, arg2, sales[arg1].field_0, msg.sender
    if not sales[arg1].field_1024:
        require arg1 < sales.length
        sales[arg1].field_0 = 0
        sales[arg1].field_256 = 0
        sales[arg1].field_512 = 0
        sales[arg1].field_768 = 0
        sales[arg1].field_1024 = 0
        sub_5ebfb0c7--
        require sub_5ebfb0c7 - 1 < sales.length
        require arg1 < sales.length
        sales[arg1].field_0 = sales[stor1].field_0
        sales[arg1].field_256 = sales[stor1].field_0
        sales[arg1].field_512 = sales[stor1].field_0
        sales[arg1].field_768 = sales[stor1].field_0
        sales[arg1].field_1024 = sales[stor1].field_0
}



}
