contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor7 = msg.sender or Mask(96, 160, stor7)
    stor0 = 10^16
    stor6 = 2 * 10^16
    stor1 = 0
    stor2 = 0
    stor4 = 90
    stor5 = 9
    return code.data[141 len 7989]
}



// =====================  Runtime code  =====================


uint256 latestprice;
uint256 noShares;
uint256 noSales;
mapping of uint256 balances;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
mapping of struct locations;
mapping of struct shares;
array of uint256 stor10;

function noShares() {
    return noShares
}

function balances(address arg1) {
    return balances[arg1]
}

function noSales() {
    return noSales
}

function shares(uint256 arg1) {
    return shares[arg1].field_0, 
           shares[arg1].field_256,
           bool(shares[arg1].field_512),
           shares[arg1].field_512,
           shares[arg1].field_768
}

function latestprice() {
    return latestprice
}

function locations(uint256 arg1) {
    mem[320] = locations[arg1][1].field_0
    idx = 320
    s = 0
    while locations[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = locations[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[locations[arg1][1].length + (floor32(locations[arg1][1].length - 1) + -locations[arg1][1].length + 32 % 32) + 320] = locations[arg1][2].length
    mem[locations[arg1][1].length + (floor32(locations[arg1][1].length - 1) + -locations[arg1][1].length + 32 % 32) + 352] = locations[arg1][2].field_0
    idx = locations[arg1][1].length + (floor32(locations[arg1][1].length - 1) + -locations[arg1][1].length + 32 % 32) + 352
    s = 0
    while locations[arg1][1].length + (floor32(locations[arg1][1].length - 1) + -locations[arg1][1].length + 32 % 32) + locations[arg1][2].length + 352 > idx + 32:
        mem[idx + 32] = locations[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return locations[arg1].field_0, 
           Array(len=locations[arg1][1].length, data=mem[320 len locations[arg1][1].length + (floor32(locations[arg1][1].length - 1) + -locations[arg1][1].length + 32 % 32) + locations[arg1][2].length + (floor32(locations[arg1][2].length - 1) + -locations[arg1][2].length + 32 % 32) + 32]),
           locations[arg1][1].length + (floor32(locations[arg1][1].length - 1) + -locations[arg1][1].length + 32 % 32) + 224,
           bool(locations[arg1].field_768),
           locations[arg1].field_768,
           locations[arg1].field_1024
}

function _fallback() {
    revert 
}

function withdrawBalance() {
    require balances[address(msg.sender)] > 0
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getProvisionBalance(uint256 arg1) {
    require arg1 >= 0
    require arg1 < 10000
    if not shares[arg1].field_0:
        return 0
    require shares[arg1].field_256 < stor10.length
    require noSales - 1 < stor10.length
    return (stor10[stor2] - stor10[stor9[arg1].field_256])
}

function setImage(uint256 arg1, string arg2) {
    require arg1 >= 0
    require arg1 < 10000
    require locations[arg1].field_0 == msg.sender
    require arg2.length < 5001
    locations[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit Change(arg1, Array(len=5, data='image'));
}

function setMessage(uint256 arg1, string arg2) {
    require arg1 >= 0
    require arg1 < 10000
    require locations[arg1].field_0 == msg.sender
    require arg2.length < 501
    locations[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit Change(arg1, Array(len=7, data='message'));
}

function collectProvisions(uint256 arg1) {
    require arg1 >= 0
    require arg1 < 10000
    require shares[arg1].field_0 == msg.sender
    require shares[arg1].field_256 < stor10.length
    require noSales - 1 < stor10.length
    balances[stor9[arg1].field_0] = balances[stor9[arg1].field_0] + stor10[stor2] - stor10[stor9[arg1].field_256]
    shares[arg1].field_256 = noSales - 1
}

function setSaleShare(uint256 arg1, bool arg2, address arg3, uint256 arg4) {
    require arg1 >= 0
    require arg1 < 10000
    require shares[arg1].field_0 == msg.sender
    shares[arg1].field_512 = arg2 or Mask(248, 8, shares[arg1].field_512)
    shares[arg1].field_768 = arg4
    shares[arg1].field_520 = Mask(248, 0, arg3)
    emit Change(arg1, Array(len=10, data='share sale'));
}

function setSaleImg(uint256 arg1, bool arg2, address arg3, uint256 arg4) {
    require arg1 >= 0
    require arg1 < 10000
    require locations[arg1].field_0 == msg.sender
    locations[arg1].field_768 = arg2 or Mask(248, 8, locations[arg1].field_768)
    locations[arg1].field_1024 = arg4
    locations[arg1].field_776 = Mask(248, 0, arg3)
    emit Change(arg1, Array(len=8, data='img sale'));
}

function buySharePriv(uint256 arg1) payable {
    require arg1 >= 0
    require arg1 < 10000
    require shares[arg1].field_0
    require bool(shares[arg1].field_512) == 1
    if shares[arg1].field_520 != msg.sender:
        require not shares[arg1].field_520
    require msg.value == shares[arg1].field_768
    shares[arg1].field_512 = 0
    shares[arg1].field_520 = 0
    balances[stor7] += msg.value / 100
    balances[stor9[arg1].field_0] = balances[stor9[arg1].field_0] + (99 * msg.value / 100) - (stor5 * msg.value / 100)
    shares[arg1].field_0 = msg.sender or Mask(96, 160, shares[arg1].field_0)
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    require noShares
    require noSales - 1 < stor10.length
    stor10[stor10.length] = stor10[stor2] + (msg.value / 100 * stor5 / noShares)
    noSales++
    emit Change(arg1, Array(len=11, data='share owner'));
}

function buyImagePriv(uint256 arg1) payable {
    require arg1 >= 0
    require arg1 < 10000
    require locations[arg1].field_0
    require bool(locations[arg1].field_768) == 1
    if locations[arg1].field_776 != msg.sender:
        require not locations[arg1].field_776
    require msg.value == locations[arg1].field_1024
    locations[arg1].field_256 = 0
    locations[arg1].field_257 = 0
    locations[arg1].field_264 = mem[128 len 31]
    idx = 0
    while locations[arg1][1].length + 31 / 32 > idx:
        locations[arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    locations[arg1].field_512 = 0
    locations[arg1].field_513 = 0
    locations[arg1].field_520 = mem[160 len 31]
    idx = 0
    while locations[arg1][2].length + 31 / 32 > idx:
        locations[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    locations[arg1].field_768 = 0
    locations[arg1].field_776 = 0
    balances[stor7] += msg.value / 100
    balances[stor8[arg1].field_0] = balances[stor8[arg1].field_0] + (99 * msg.value / 100) - (stor5 * msg.value / 100)
    locations[arg1].field_0 = msg.sender or Mask(96, 160, locations[arg1].field_0)
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    require noShares
    require noSales - 1 < stor10.length
    stor10[stor10.length] = stor10[stor2] + (msg.value / 100 * stor5 / noShares)
    noSales++
    emit Change(arg1, Array(len=9, data='img owner'));
}

function buyEmptyLocation(uint256 arg1) payable {
    require arg1 >= 0
    require arg1 < 10000
    require not locations[arg1].field_0
    require msg.value == latestprice
    locations[arg1].field_0 = msg.sender or Mask(96, 160, locations[arg1].field_0)
    locations[arg1].field_256 = 0
    locations[arg1].field_257 = 0
    locations[arg1].field_264 = mem[128 len 31]
    idx = 0
    while locations[arg1][1].length + 31 / 32 > idx:
        locations[arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    locations[arg1].field_512 = 0
    locations[arg1].field_513 = 0
    locations[arg1].field_520 = mem[160 len 31]
    idx = 0
    while locations[arg1][2].length + 31 / 32 > idx:
        locations[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    locations[arg1].field_768 = 0
    locations[arg1].field_776 = 0
    locations[arg1].field_1024 = latestprice
    shares[arg1].field_0 = msg.sender or Mask(96, 160, shares[arg1].field_0)
    shares[arg1].field_256 = noSales
    shares[arg1].field_512 = 0
    shares[arg1].field_768 = 0
    shares[arg1].field_520 = 0
    shares[arg1].field_768 = 0
    shares[arg1].field_768 = latestprice
    if noShares <= 0:
        balances[stor7] += latestprice
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                stor10[idx] = 0
                idx = idx + 1
                continue 
        stor10[stor10.length] = 0
    else:
        balances[stor7] = balances[stor7] + (100 * latestprice / 100) - (stor4 * latestprice / 100)
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                stor10[idx] = 0
                idx = idx + 1
                continue 
        require noShares
        require noSales - 1 < stor10.length
        stor10[stor10.length] = stor10[stor2] + (latestprice / 100 * stor4 / noShares)
    noSales++
    noShares++
    latestprice += stor6
    emit Change(arg1, Array(len=5, data='owner'));
}



}
