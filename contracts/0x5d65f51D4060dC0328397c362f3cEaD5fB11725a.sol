contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor2[address(stor0)] = 10^11
    stor1 = 0
    return code.data[171 len 6654]
}



// =====================  Runtime code  =====================


address owner;
uint256 nextSaleId;
array of struct balanceOf;
array of struct assets;
array of struct sales;

function sub_172cf358(?) payable {
    return assets.length
}

function salesCount() payable {
    return sales.length
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

function sales(uint256 arg1) payable {
    require arg1 < sales.length
    return sales[arg1].field_0, sales[arg1].field_256, sales[arg1].field_512, sales[arg1].field_768, sales[arg1].field_1024
}

function assets(uint256 arg1) payable {
    require arg1 < assets.length
    return assets[arg1].field_0, assets[arg1].field_256, assets[arg1].field_512
}

function sub_dc6f0ec8(?) payable {
    return balanceOf[address(arg1)][3][arg2].field_0
}

function nextSaleId() payable {
    return nextSaleId
}

function _fallback() payable {
  stop
}

function sub_1629614e(?) payable {
    require msg.sender == owner
    require arg1 < assets.length
    assets[arg1].field_256 = 1
    emit 0x44fdf11a: arg1
}

function sub_67b6cd1e(?) payable {
    balanceOf[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    balanceOf[address(msg.sender)].field_512 = arg2
    emit 0x2546b90e: msg.sender
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

function sub_85b44043(?) payable {
    require msg.sender == owner
    require arg1 < assets.length
    require not assets[arg1].field_256
    balanceOf[stor0][3][arg1].field_0 += arg2
    require arg1 < assets.length
    assets[arg1].field_512 += arg2
    emit 0x44fdf11a: arg1
}

function sub_9019326b(?) payable {
    require msg.sender == owner
    assets.length++
    if not assets.length <= assets.length + 1:
        idx = (3 * assets.length) + 3
        while 3 * assets.length > idx:
            assets[idx].field_0 = 0
            assets[idx].field_256 = 0
            assets[idx].field_512 = 0
            idx = idx + 1
            continue 
    require assets.length < assets.length
    assets[assets.length].field_0 = arg1
    assets[assets.length].field_256 = 0
    emit 0x44fdf11a: assets.length
}

function createSale(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require balanceOf[address(msg.sender)][3][arg1].field_0 >= arg3
    require arg3
    balanceOf[address(msg.sender)][3][arg1].field_0 -= arg3
    sales.length++
    if not sales.length <= sales.length + 1:
        idx = (5 * sales.length) + 5
        while 5 * sales.length > idx:
            sales[idx].field_0 = 0
            sales[idx].field_256 = 0
            sales[idx].field_512 = 0
            sales[idx].field_768 = 0
            sales[idx].field_1024 = 0
            idx = idx + 1
            continue 
    require sales.length < sales.length
    nextSaleId++
    sales[sales.length].field_256 = nextSaleId
    sales[sales.length].field_768 = arg2
    sales[sales.length].field_1024 = arg3
    sales[sales.length].field_512 = arg1
    sales[sales.length].field_0 = msg.sender or Mask(96, 160, sales[sales.length].field_0)
    emit 0x51366374: arg1, arg3, msg.sender, this.address
    emit 0x3e2eee13: (sales.length - 1)
}

function cancelSale(uint256 arg1) payable {
    require arg1 < sales.length
    require msg.sender == sales[arg1].field_0
    require arg1 < sales.length
    balanceOf[stor4[arg1].field_0][3][stor4[arg1].field_512].field_0 += sales[arg1].field_1024
    sales[arg1].field_0 = 0
    sales[arg1].field_256 = 0
    sales[arg1].field_512 = 0
    sales[arg1].field_768 = 0
    sales[arg1].field_1024 = 0
    require sales.length - 1 < sales.length
    require arg1 < sales.length
    sales[arg1].field_0 = sales[sales.length].field_0
    sales[arg1].field_256 = sales[sales.length].field_0
    sales[arg1].field_512 = sales[sales.length].field_0
    sales[arg1].field_768 = sales[sales.length].field_0
    sales[arg1].field_1024 = sales[sales.length].field_0
    sales.length--
    if not sales.length <= sales.length - 1:
        idx = (5 * sales.length) - 5
        while 5 * sales.length > idx:
            sales[idx].field_0 = 0
            sales[idx].field_256 = 0
            sales[idx].field_512 = 0
            sales[idx].field_768 = 0
            sales[idx].field_1024 = 0
            idx = idx + 1
            continue 
    emit 0x51366374: sales[arg1].field_512, sales[arg1].field_1024, this.address, sales[arg1].field_0
}

function buy(uint256 arg1, uint256 arg2) payable {
    require arg1 < sales.length
    require balanceOf[address(msg.sender)].field_0 >= sales[arg1].field_768 * arg2
    require arg2
    require arg1 < sales.length
    require sales[arg1].field_1024 >= arg2
    balanceOf[address(msg.sender)].field_0 += -1 * sales[arg1].field_768 * arg2
    balanceOf[address(msg.sender)][3][stor4[arg1].field_512].field_0 += arg2
    balanceOf[stor4[arg1].field_0].field_0 += sales[arg1].field_768 * arg2
    sales[arg1].field_1024 -= arg2
    emit Transfer((sales[arg1].field_768 * arg2), msg.sender, sales[arg1].field_0);
    emit 0x51366374: sales[arg1].field_512, arg2, this.address, msg.sender
    emit 0x3e2eee13: arg1
    if not sales[arg1].field_1024:
        require arg1 < sales.length
        sales[arg1].field_0 = 0
        sales[arg1].field_256 = 0
        sales[arg1].field_512 = 0
        sales[arg1].field_768 = 0
        sales[arg1].field_1024 = 0
        require sales.length - 1 < sales.length
        require arg1 < sales.length
        sales[arg1].field_0 = sales[sales.length].field_0
        sales[arg1].field_256 = sales[sales.length].field_0
        sales[arg1].field_512 = sales[sales.length].field_0
        sales[arg1].field_768 = sales[sales.length].field_0
        sales[arg1].field_1024 = sales[sales.length].field_0
        sales.length--
        if not sales.length <= sales.length - 1:
            idx = (5 * sales.length) - 5
            while 5 * sales.length > idx:
                sales[idx].field_0 = 0
                sales[idx].field_256 = 0
                sales[idx].field_512 = 0
                sales[idx].field_768 = 0
                sales[idx].field_1024 = 0
                idx = idx + 1
                continue 
}



}
