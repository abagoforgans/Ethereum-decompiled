contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor7;
address stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor3 = 18
    require not msg.value
    stor0 = msg.sender
    stor4 = 100 * 10^6 * 10^stor3
    stor5[address(msg.sender)] = stor4
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'WaraCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'WAC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 25 * 10^6 * 10^stor3
    stor10 = 50 * 10^6 * 10^stor3
    stor8 = msg.sender
    stor7 = 10000
    return code.data[707 len 8409]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 waracoin_per_ether;
address stor8;
uint256 stor9;
uint256 stor10;
mapping of struct myProducts;

function waracoin_per_ether() {
    return waracoin_per_ether
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function MyProducts(address arg1, uint256 arg2) {
    mem[352] = myProducts[arg1][arg2][1].field_0
    idx = 352
    s = 0
    while myProducts[arg1][arg2][1].length + 352 > idx + 32:
        mem[idx + 32] = myProducts[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + 352] = myProducts[arg1][arg2][2].length
    mem[myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + 384] = myProducts[arg1][arg2][2].field_0
    idx = myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + 384
    s = 0
    while myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + myProducts[arg1][arg2][2].length + 384 > idx + 32:
        mem[idx + 32] = myProducts[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + myProducts[arg1][arg2][2].length + (floor32(myProducts[arg1][arg2][2].length - 1) + -myProducts[arg1][arg2][2].length + 32 % 32) + 416] = myProducts[arg1][arg2][5].field_0
    idx = myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + myProducts[arg1][arg2][2].length + (floor32(myProducts[arg1][arg2][2].length - 1) + -myProducts[arg1][arg2][2].length + 32 % 32) + 416
    s = 0
    while myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + myProducts[arg1][arg2][2].length + (floor32(myProducts[arg1][arg2][2].length - 1) + -myProducts[arg1][arg2][2].length + 32 % 32) + myProducts[arg1][arg2][5].length + 416 > idx + 32:
        mem[idx + 32] = myProducts[arg1][arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return myProducts[arg1][arg2].field_0, 
           Array(len=myProducts[arg1][arg2][1].length, data=mem[352 len myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + myProducts[arg1][arg2][2].length + (floor32(myProducts[arg1][arg2][2].length - 1) + -myProducts[arg1][arg2][2].length + 32 % 32) + 32], myProducts[arg1][arg2][5].length, mem[myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + myProducts[arg1][arg2][2].length + (floor32(myProducts[arg1][arg2][2].length - 1) + -myProducts[arg1][arg2][2].length + 32 % 32) + 416 len myProducts[arg1][arg2][5].length + (floor32(myProducts[arg1][arg2][5].length - 1) + -myProducts[arg1][arg2][5].length + 32 % 32)]),
           myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + 256,
           myProducts[arg1][arg2].field_768,
           myProducts[arg1][arg2].field_1024,
           myProducts[arg1][arg2][1].length + (floor32(myProducts[arg1][arg2][1].length - 1) + -myProducts[arg1][arg2][1].length + 32 % 32) + myProducts[arg1][arg2][2].length + (floor32(myProducts[arg1][arg2][2].length - 1) + -myProducts[arg1][arg2][2].length + 32 % 32) + 288,
           myProducts[arg1][arg2].field_1536
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function setWaracoinPerEther(uint256 arg1) {
    require msg.sender == owner
    waracoin_per_ether = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function checkProductGenuine(address arg1, address arg2, uint256 arg3) {
    require myProducts[address(arg1)][arg3].field_768 == arg2
    return 1
}

function setMoveProductToWhom(address arg1, uint256 arg2, address arg3) {
    require myProducts[address(arg1)][arg2].field_768 == msg.sender
    myProducts[address(arg1)][arg2].field_1024 = arg3
    return 1
}

function waraCoinTransfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2 * 10^decimals
    balanceOf[address(msg.sender)] += -1 * arg2 * 10^decimals
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function moveProduct(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(msg.sender)] >= 10^decimals
    require myProducts[address(arg1)][arg3].field_768 == arg2
    require myProducts[address(arg1)][arg3].field_1024 == msg.sender
    myProducts[address(arg1)][arg3].field_768 = msg.sender
    myProducts[address(arg1)][arg3].field_1536++
    balanceOf[address(msg.sender)] -= 10^decimals
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function buyFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require waracoin_per_ether
    require eth.balance(this.address) >= arg2 * 10^decimals / waracoin_per_ether
    require balanceOf[address(arg1)] >= arg2 * 10^decimals
    balanceOf[address(arg1)] += -1 * arg2 * 10^decimals
    call arg1 with:
       value arg2 * 10^decimals / waracoin_per_ether wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((arg2 * 10^decimals), arg1, this.address);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function registerNewProduct(uint256 arg1, string arg2, string arg3, string arg4) {
    require balanceOf[address(msg.sender)] >= 10^decimals
    require myProducts[address(msg.sender)][arg1].field_0 != msg.sender
    myProducts[address(msg.sender)][arg1].field_0 = msg.sender
    myProducts[address(msg.sender)][arg1].field_768 = msg.sender
    myProducts[address(msg.sender)][arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    myProducts[address(msg.sender)][arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    myProducts[address(msg.sender)][arg1][5][].field_0 = Array(len=arg4.length, data=arg4[all])
    balanceOf[address(msg.sender)] -= 10^decimals
    return 1
}

function _fallback() payable {
    if owner != msg.sender:
        if stor9 > 0:
            if stor9:
                if stor9 <= 10000 * msg.value:
                    stor9 = 0
                else:
                    stor9 += -10000 * msg.value
            else:
                if not stor10:
                    totalSupply += 10000 * msg.value
                else:
                    if stor10 <= 10000 * msg.value:
                        stor10 = 0
                    else:
                        stor10 += -10000 * msg.value
            balanceOf[address(msg.sender)] += 10000 * msg.value
            call stor8 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((10000 * msg.value), this.address, msg.sender);
        else:
            if stor10 <= 0:
                if stor9:
                    if stor9 <= 1000 * msg.value:
                        stor9 = 0
                    else:
                        stor9 += -1000 * msg.value
                else:
                    if not stor10:
                        totalSupply += 1000 * msg.value
                    else:
                        if stor10 <= 1000 * msg.value:
                            stor10 = 0
                        else:
                            stor10 += -1000 * msg.value
                balanceOf[address(msg.sender)] += 1000 * msg.value
                call stor8 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Transfer((1000 * msg.value), this.address, msg.sender);
            else:
                if stor9:
                    if stor9 <= 5000 * msg.value:
                        stor9 = 0
                    else:
                        stor9 += -5000 * msg.value
                else:
                    if not stor10:
                        totalSupply += 5000 * msg.value
                    else:
                        if stor10 <= 5000 * msg.value:
                            stor10 = 0
                        else:
                            stor10 += -5000 * msg.value
                balanceOf[address(msg.sender)] += 5000 * msg.value
                call stor8 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Transfer((5000 * msg.value), this.address, msg.sender);
}



}
