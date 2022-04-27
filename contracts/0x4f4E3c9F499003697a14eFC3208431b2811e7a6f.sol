contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor8;

function _fallback() {
    stor8 = msg.sender
    stor2 = code.data[5326 len 20]
    stor4 = 1
    stor5 = 50
    stor6 = 0
    return code.data[213 len 5101]
}



// =====================  Runtime code  =====================


array of struct wishName;
array of struct wishIdxAt;
address godAddress;
address serviceProviderAddress;
uint256 serviceFeeNumerator;
uint256 serviceFeeDenominator;
uint256 minimumWishTribute;
uint256 accumulatedServiceFee;
address owner;

function getMinimumWishTribute() {
    return minimumWishTribute
}

function getServiceFeeNumerator() {
    return serviceFeeNumerator
}

function getServiceFeeDenominator() {
    return serviceFeeDenominator
}

function getWishName(uint256 arg1) {
    return wishName[arg1][0 len wishName[arg1].length].field_0
}

function getWishTribute(uint256 arg1) {
    require arg1 < wishName.length
    return wishName[arg1].field_768
}

function countWishes() {
    return wishName.length
}

function getServiceProvider() {
    return serviceProviderAddress
}

function getWishIdxAt(address arg1, uint256 arg2) {
    require arg2 < wishIdxAt[address(arg1)].field_0
    return wishIdxAt[address(arg1)][arg2].field_0
}

function countWishesAt(address arg1) {
    return wishIdxAt[address(arg1)].field_0
}

function getWishContent(uint256 arg1) {
    return stor[(4 * arg1) + ('name', 'wishName', 0) + 1][0 len stor[(4 * arg1) + ('name', 'wishName', 0) + 1].length].field_0
}

function getGodAddress() {
    return godAddress
}

function getOwner() {
    return owner
}

function getWishTime(uint256 arg1) {
    require arg1 < wishName.length
    return wishName[arg1].field_512
}

function getAccumulatedServiceFee() {
    return accumulatedServiceFee
}

function _fallback() payable {
  stop
}

function transferOwner(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setMinimumWishTribute(uint256 arg1) {
    require msg.sender == owner
    minimumWishTribute = arg1
}

function setServiceProvider(address arg1) {
    require msg.sender == owner
    serviceProviderAddress = arg1
}

function setServiceFee(uint256 arg1, uint256 arg2) {
    require msg.sender == serviceProviderAddress
    serviceFeeNumerator = arg1
    serviceFeeDenominator = arg2
}

function withdrawServiceFee() {
    require msg.sender == serviceProviderAddress
    accumulatedServiceFee = 0
    call serviceProviderAddress with:
       value accumulatedServiceFee wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getWishIdxesAt(address arg1) {
    if not wishIdxAt[address(arg1)].field_0:
        mem[(32 * wishIdxAt[address(arg1)].field_0) + 160] = 32
        mem[(32 * wishIdxAt[address(arg1)].field_0) + 192] = wishIdxAt[address(arg1)].field_0
        mem[(32 * wishIdxAt[address(arg1)].field_0) + 224 len floor32(wishIdxAt[address(arg1)].field_0)] = mem[160 len floor32(wishIdxAt[address(arg1)].field_0)]
        return memory
          from (32 * wishIdxAt[address(arg1)].field_0) + 160
           len (96 * wishIdxAt[address(arg1)].field_0) + 64
    mem[160] = wishIdxAt[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * wishIdxAt[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = wishIdxAt[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * wishIdxAt[address(arg1)].field_0) + 224 len floor32(wishIdxAt[address(arg1)].field_0)] = mem[160 len floor32(wishIdxAt[address(arg1)].field_0)]
    return Array(len=wishIdxAt[address(arg1)].field_0, data=mem[160 len floor32(wishIdxAt[address(arg1)].field_0)], mem[(32 * wishIdxAt[address(arg1)].field_0) + floor32(wishIdxAt[address(arg1)].field_0) + 224 len (32 * wishIdxAt[address(arg1)].field_0) - floor32(wishIdxAt[address(arg1)].field_0)]), 
}

function postWish(bytes arg1, bytes arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ceil32(arg1.length) + ceil32(arg2.length) + 288
    require msg.value > 0
    require serviceProviderAddress
    require serviceFeeDenominator + serviceFeeNumerator
    require msg.value - (msg.value * serviceFeeNumerator / serviceFeeDenominator + serviceFeeNumerator) > minimumWishTribute
    require accumulatedServiceFee + (msg.value * serviceFeeNumerator / serviceFeeDenominator + serviceFeeNumerator) > accumulatedServiceFee
    wishName.length++
    if not wishName.length <= wishName.length + 1:
        mem[0] = 0
        idx = 4 * wishName.length + 1
        while sha3(0) + (4 * wishName.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            stor[idx + sha3(mem[0]) + 3] = 0
            idx = idx + 4
            continue 
    wishName[wishName.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((4 * wishName.length) + ('name', 'wishName', 0) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    wishName[wishName.length].field_512 = block.timestamp
    wishName[wishName.length].field_768 = msg.value - (msg.value * serviceFeeNumerator / serviceFeeDenominator + serviceFeeNumerator)
    wishIdxAt[address(msg.sender)].field_0++
    if not wishIdxAt[address(msg.sender)].field_0 <= wishIdxAt[address(msg.sender)].field_0 + 1:
        idx = wishIdxAt[address(msg.sender)].field_0 + 1
        while wishIdxAt[address(msg.sender)].field_0 > idx:
            wishIdxAt[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    wishIdxAt[address(msg.sender)][wishIdxAt[address(msg.sender)].field_0].field_0 = wishName.length
    accumulatedServiceFee += msg.value * serviceFeeNumerator / serviceFeeDenominator + serviceFeeNumerator
    call godAddress with:
       value msg.value - (msg.value * serviceFeeNumerator / serviceFeeDenominator + serviceFeeNumerator) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 704 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 704] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 736 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit PostWish(msg.sender, wishName.length, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 704 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 224, block.timestamp, msg.value - (msg.value * serviceFeeNumerator / serviceFeeDenominator + serviceFeeNumerator));
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 736] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 768 len arg2.length % 32]
        emit PostWish(msg.sender, wishName.length, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 704 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 224, block.timestamp, msg.value - (msg.value * serviceFeeNumerator / serviceFeeDenominator + serviceFeeNumerator));
}



}
