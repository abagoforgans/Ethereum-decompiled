contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[6810 len 32]
    stor2 = code.data[6842 len 32]
    stor3 = code.data[6874 len 32]
    return code.data[167 len 6643]
}



// =====================  Runtime code  =====================


const getRandomNum = ((block.hash(block.number - 1) % 100) + 1)


address managerAddress;
uint256 sub_da0350c4;
uint256 sub_f38991b3;
uint256 sub_650da703;
array of struct allGames;
uint256 sub_3384d436;
array of uint256 sub_f81cd8d7;
uint256 sub_c5b556f9;
array of struct sub_9ca05b6f;
mapping of uint256 sub_1481c673;
mapping of uint256 sub_c4c8d851;
mapping of uint256 sub_8c9a853c;
uint256 sub_ab961c0e;
array of uint256 stor13;

function sub_1481c673(?) {
    return sub_1481c673[arg1]
}

function sub_3384d436(?) {
    return sub_3384d436
}

function manager() {
    return managerAddress
}

function sub_650da703(?) {
    return sub_650da703
}

function getTotalNumOfGames() {
    return allGames.length
}

function sub_8c9a853c(?) {
    return sub_8c9a853c[arg1]
}

function sub_9ca05b6f(?) {
    require arg1 < sub_9ca05b6f.length
    return uint256(sub_9ca05b6f[arg1].field_0), 
           uint256(sub_9ca05b6f[arg1].field_256),
           uint256(sub_9ca05b6f[arg1].field_512),
           address(sub_9ca05b6f[arg1].field_768),
           uint256(sub_9ca05b6f[arg1].field_1024),
           uint256(sub_9ca05b6f[arg1].field_1536),
           uint256(sub_9ca05b6f[arg1].field_1792),
           bool(uint8(sub_9ca05b6f[arg1].field_2048)),
           address(sub_9ca05b6f[arg1].field_2048),
           uint256(sub_9ca05b6f[arg1].field_2304)
}

function allGames(uint256 arg1) {
    require arg1 < allGames.length
    return uint256(allGames[arg1].field_0), 
           uint256(allGames[arg1].field_256),
           uint256(allGames[arg1].field_512),
           address(allGames[arg1].field_768),
           uint256(allGames[arg1].field_1024),
           uint256(allGames[arg1].field_1536),
           uint256(allGames[arg1].field_1792),
           bool(uint8(allGames[arg1].field_2048)),
           address(allGames[arg1].field_2048),
           uint256(allGames[arg1].field_2304)
}

function sub_ab961c0e(?) {
    return sub_ab961c0e
}

function sub_c4c8d851(?) {
    return sub_c4c8d851[arg1]
}

function sub_c5b556f9(?) {
    return sub_c5b556f9
}

function sub_da0350c4(?) {
    return sub_da0350c4
}

function getPlayerBalance(address arg1) {
    return sub_1481c673[address(arg1)]
}

function sub_f38991b3(?) {
    return sub_f38991b3
}

function sub_f81cd8d7(?) {
    require arg1 < sub_f81cd8d7.length
    return sub_f81cd8d7[arg1]
}

function _fallback() payable {
    revert
}

function changeManager(address arg1) {
    require msg.sender == managerAddress
    managerAddress = arg1
}

function modifyWinningCommission(uint256 arg1) {
    require msg.sender == managerAddress
    sub_650da703 = arg1
}

function drain() {
    require msg.sender == managerAddress
    call managerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getGameSecretNum(uint256 arg1) {
    require arg1 >= 0
    require arg1 < allGames.length
    if bool(uint8(allGames[arg1].field_2048)) != 1:
        return 0
    require arg1 < stor13.length
    return stor13[arg1]
}

function transferPrize(uint256 arg1, address arg2) {
    require arg1 >= 0
    require arg1 < allGames.length
    uint8(allGames[arg1].field_2048) = 1
    address(allGames[arg1].field_2056) = arg2
    uint256(allGames[arg1].field_2304) = uint256(allGames[arg1].field_512) - (sub_650da703 / 100 * uint256(allGames[arg1].field_512))
    call address(allGames[arg1].field_2056) with:
       value uint256(allGames[arg1].field_2304) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        uint256(allGames[arg1].field_512) = 0
        sub_1481c673[address(msg.sender)] += uint256(allGames[arg1].field_2304)
        sub_ab961c0e += uint256(allGames[arg1].field_2304)
        emit GameWon(arg1, address(allGames[arg1].field_2048), uint256(allGames[arg1].field_2304));
    require arg1 < sub_9ca05b6f.length
    uint256(sub_9ca05b6f[arg1].field_0) = 0
    uint256(sub_9ca05b6f[arg1].field_256) = 0
    uint256(sub_9ca05b6f[arg1].field_512) = 0
    address(sub_9ca05b6f[arg1].field_768) = 0
    uint256(sub_9ca05b6f[arg1].field_1024) = 0
    uint256(sub_9ca05b6f[arg1].field_1280) = 0
    idx = 0
    while uint256(sub_9ca05b6f[arg1].field_1280) > idx:
        uint256(stor[idx + sha3((10 * arg1) + ('name', 'sub_9ca05b6f', 8) + 5)].field_0) = 0
        idx = idx + 1
        continue 
    uint256(sub_9ca05b6f[arg1].field_1536) = 0
    uint256(sub_9ca05b6f[arg1].field_1792) = 0
    uint8(sub_9ca05b6f[arg1].field_2048) = 0
    address(sub_9ca05b6f[arg1].field_2056) = 0
    uint256(sub_9ca05b6f[arg1].field_2304) = 0
    sub_f81cd8d7.length++
    if not sub_f81cd8d7.length <= sub_f81cd8d7.length + 1:
        idx = sub_f81cd8d7.length + 1
        while sub_f81cd8d7.length > idx:
            sub_f81cd8d7[idx] = 0
            idx = idx + 1
            continue 
    sub_f81cd8d7[sub_f81cd8d7.length] = arg1
    sub_c5b556f9++
}

function getGameDetail(uint256 arg1) {
    require arg1 >= 0
    require arg1 < allGames.length
    if uint256(allGames[arg1].field_1280):
        mem[160] = uint256(stor[sha3((10 * arg1) + ('name', 'allGames', 4) + 5)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(allGames[arg1].field_1280)) + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) + ('name', 'allGames', 4) + 5)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(allGames[arg1].field_1280)) + 160] = uint256(allGames[arg1].field_256)
        mem[(32 * uint256(allGames[arg1].field_1280)) + 192] = uint256(allGames[arg1].field_512)
        if Mask(251, 0, allGames[arg1].field_1280):
            mem[(32 * uint256(allGames[arg1].field_1280)) + 416] = mem[160]
            mem[(32 * uint256(allGames[arg1].field_1280)) + 448 len floor32((32 * uint256(allGames[arg1].field_1280)) - 1)] = mem[192 len (32 * uint256(allGames[arg1].field_1280)) + 32], address(allGames[arg1].field_768), uint256(allGames[arg1].field_1024), uint256(allGames[arg1].field_1536), uint256(allGames[arg1].field_1792), Array(len=mem[160], data=mem[(32 * uint256(allGames[arg1].field_1280)) + 448 len floor32((32 * uint256(allGames[arg1].field_1280)) - 1) + -(32 * uint256(allGames[arg1].field_1280)) - 256]), uint256(allGames[arg1].field_1280)
    else:
        mem[(32 * uint256(allGames[arg1].field_1280)) + 160] = uint256(allGames[arg1].field_256)
        mem[(32 * uint256(allGames[arg1].field_1280)) + 192] = uint256(allGames[arg1].field_512)
        mem[(32 * uint256(allGames[arg1].field_1280)) + 224] = address(allGames[arg1].field_768)
        mem[(32 * uint256(allGames[arg1].field_1280)) + 256] = uint256(allGames[arg1].field_1024)
        mem[(32 * uint256(allGames[arg1].field_1280)) + 288] = uint256(allGames[arg1].field_1536)
        mem[(32 * uint256(allGames[arg1].field_1280)) + 320] = uint256(allGames[arg1].field_1792)
        mem[(32 * uint256(allGames[arg1].field_1280)) + 352] = 224
        mem[(32 * uint256(allGames[arg1].field_1280)) + 384] = uint256(allGames[arg1].field_1280)
        if Mask(251, 0, allGames[arg1].field_1280):
            mem[(32 * uint256(allGames[arg1].field_1280)) + 416] = mem[160]
            mem[(32 * uint256(allGames[arg1].field_1280)) + 448 len floor32((32 * uint256(allGames[arg1].field_1280)) - 1)] = mem[192 len floor32((32 * uint256(allGames[arg1].field_1280)) - 1)]
    return uint256(allGames[arg1].field_256), 
           uint256(allGames[arg1].field_512),
           address(allGames[arg1].field_768),
           uint256(allGames[arg1].field_1024),
           uint256(allGames[arg1].field_1536),
           uint256(allGames[arg1].field_1792),
           Array(len=uint256(allGames[arg1].field_1280), data=mem[(32 * uint256(allGames[arg1].field_1280)) + 416 len 32 * uint256(allGames[arg1].field_1280)])
}

function betGame(uint256 arg1, uint256 arg2) payable {
    require arg1 >= 0
    require arg1 < allGames.length
    require bool(uint8(allGames[arg1].field_2048)) != 1
    require uint256(allGames[arg1].field_1536) < sub_f38991b3
    require uint256(allGames[arg1].field_1792) <= msg.value
    uint256(allGames[arg1].field_1280)++
    if not uint256(allGames[arg1].field_1280) <= uint256(allGames[arg1].field_1280) + 1:
        idx = uint256(allGames[arg1].field_1280) + 1
        while uint256(allGames[arg1].field_1280) > idx:
            uint256(stor[idx + sha3((10 * arg1) + ('name', 'allGames', 4) + 5)].field_0) = 0
            idx = idx + 1
            continue 
    require uint256(allGames[arg1].field_1280) < uint256(allGames[arg1].field_1280)
    uint256(stor[uint256(allGames[arg1].field_1280) + sha3((10 * arg1) + ('name', 'allGames', 4) + 5)].field_0) = arg2
    uint256(allGames[arg1].field_1536) = uint256(allGames[arg1].field_1280)
    require 10 * sub_da0350c4
    uint256(allGames[arg1].field_1792) += 2 * uint256(allGames[arg1].field_1024) / 10 * sub_da0350c4
    uint256(allGames[arg1].field_512) += msg.value
    sub_1481c673[address(msg.sender)] -= msg.value
    sub_8c9a853c[address(msg.sender)]++
    emit Bet1Bet(arg1, msg.sender, arg2);
    require arg1 < stor13.length
    if arg2 == stor13[arg1]:
        require arg1 >= 0
        require arg1 < allGames.length
        uint8(allGames[arg1].field_2048) = 1
        address(allGames[arg1].field_2056) = msg.sender
        uint256(allGames[arg1].field_2304) = uint256(allGames[arg1].field_512) - (sub_650da703 / 100 * uint256(allGames[arg1].field_512))
        call address(allGames[arg1].field_2056) with:
           value uint256(allGames[arg1].field_2304) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            uint256(allGames[arg1].field_512) = 0
            sub_1481c673[address(msg.sender)] += uint256(allGames[arg1].field_2304)
            sub_ab961c0e += uint256(allGames[arg1].field_2304)
            emit GameWon(arg1, address(allGames[arg1].field_2048), uint256(allGames[arg1].field_2304));
        require arg1 < sub_9ca05b6f.length
        uint256(sub_9ca05b6f[arg1].field_0) = 0
        uint256(sub_9ca05b6f[arg1].field_256) = 0
        uint256(sub_9ca05b6f[arg1].field_512) = 0
        address(sub_9ca05b6f[arg1].field_768) = 0
        uint256(sub_9ca05b6f[arg1].field_1024) = 0
        uint256(sub_9ca05b6f[arg1].field_1280) = 0
        idx = 0
        while uint256(sub_9ca05b6f[arg1].field_1280) > idx:
            uint256(stor[idx + sha3((10 * arg1) + ('name', 'sub_9ca05b6f', 8) + 5)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(sub_9ca05b6f[arg1].field_1536) = 0
        uint256(sub_9ca05b6f[arg1].field_1792) = 0
        uint8(sub_9ca05b6f[arg1].field_2048) = 0
        address(sub_9ca05b6f[arg1].field_2056) = 0
        uint256(sub_9ca05b6f[arg1].field_2304) = 0
        sub_f81cd8d7.length++
        if not sub_f81cd8d7.length <= sub_f81cd8d7.length + 1:
            idx = sub_f81cd8d7.length + 1
            while sub_f81cd8d7.length > idx:
                sub_f81cd8d7[idx] = 0
                idx = idx + 1
                continue 
        sub_f81cd8d7[sub_f81cd8d7.length] = arg1
        sub_c5b556f9++
    else:
        if uint256(allGames[arg1].field_1536) >= sub_f38991b3:
            require arg1 >= 0
            require arg1 < allGames.length
            uint8(allGames[arg1].field_2048) = 1
            Mask(248, 0, allGames[arg1].field_2056) = address(allGames[arg1].field_768)
            uint256(allGames[arg1].field_2304) = uint256(allGames[arg1].field_512) - (sub_650da703 / 100 * uint256(allGames[arg1].field_512))
            call address(allGames[arg1].field_2056) with:
               value uint256(allGames[arg1].field_2304) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                uint256(allGames[arg1].field_512) = 0
                sub_1481c673[address(msg.sender)] += uint256(allGames[arg1].field_2304)
                sub_ab961c0e += uint256(allGames[arg1].field_2304)
                emit GameWon(arg1, address(allGames[arg1].field_2048), uint256(allGames[arg1].field_2304));
            require arg1 < sub_9ca05b6f.length
            uint256(sub_9ca05b6f[arg1].field_0) = 0
            uint256(sub_9ca05b6f[arg1].field_256) = 0
            uint256(sub_9ca05b6f[arg1].field_512) = 0
            address(sub_9ca05b6f[arg1].field_768) = 0
            uint256(sub_9ca05b6f[arg1].field_1024) = 0
            uint256(sub_9ca05b6f[arg1].field_1280) = 0
            idx = 0
            while uint256(sub_9ca05b6f[arg1].field_1280) > idx:
                uint256(stor[idx + sha3((10 * arg1) + ('name', 'sub_9ca05b6f', 8) + 5)].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_9ca05b6f[arg1].field_1536) = 0
            uint256(sub_9ca05b6f[arg1].field_1792) = 0
            uint8(sub_9ca05b6f[arg1].field_2048) = 0
            address(sub_9ca05b6f[arg1].field_2056) = 0
            uint256(sub_9ca05b6f[arg1].field_2304) = 0
            sub_f81cd8d7.length++
            if not sub_f81cd8d7.length <= sub_f81cd8d7.length + 1:
                idx = sub_f81cd8d7.length + 1
                while sub_f81cd8d7.length > idx:
                    sub_f81cd8d7[idx] = 0
                    idx = idx + 1
                    continue 
            sub_f81cd8d7[sub_f81cd8d7.length] = arg1
            sub_c5b556f9++
    return uint256(allGames[arg1].field_1280)
}

function newGame(address arg1) payable {
    require msg.value >= 10^17
    allGames.length++
    if not allGames.length <= allGames.length + 1:
        mem[0] = 4
        idx = (10 * allGames.length) + 10
        while sha3(4) + (10 * allGames.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            address(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5].field_0) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 8].field_0) = 0
            address(stor[idx + sha3(mem[0]) + 8].field_8) = 0
            uint256(stor[idx + sha3(mem[0]) + 9].field_0) = 0
            idx = idx + 10
            continue 
    require allGames.length < allGames.length
    uint256(allGames[allGames.length].field_0) = allGames.length
    uint256(allGames[allGames.length].field_256) = block.timestamp
    address(allGames[allGames.length].field_768) = arg1
    uint256(allGames[allGames.length].field_1024) = msg.value
    uint256(allGames[allGames.length].field_512) = msg.value
    require sub_da0350c4
    uint256(allGames[allGames.length].field_1792) = 2 * msg.value / sub_da0350c4
    stor13.length++
    if not stor13.length <= stor13.length + 1:
        idx = stor13.length + 1
        while stor13.length > idx:
            stor13[idx] = 0
            idx = idx + 1
            continue 
    stor13[stor13.length] = (block.hash(block.number - 1) % 100) + 1
    sub_9ca05b6f.length++
    if not sub_9ca05b6f.length <= sub_9ca05b6f.length + 1:
        mem[0] = 8
        idx = (10 * sub_9ca05b6f.length) + 10
        while sha3(8) + (10 * sub_9ca05b6f.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            address(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5].field_0) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 8].field_0) = 0
            address(stor[idx + sha3(mem[0]) + 8].field_8) = 0
            uint256(stor[idx + sha3(mem[0]) + 9].field_0) = 0
            idx = idx + 10
            continue 
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_0) = uint256(allGames[allGames.length].field_0)
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_256) = uint256(allGames[allGames.length].field_256)
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_512) = uint256(allGames[allGames.length].field_512)
    address(sub_9ca05b6f[sub_9ca05b6f.length].field_768) = address(allGames[allGames.length].field_768)
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_1024) = uint256(allGames[allGames.length].field_1024)
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_1280) = uint256(allGames[allGames.length].field_1280)
    if not uint256(allGames[allGames.length].field_1280):
        idx = 0
        while uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_1280) > idx:
            uint256(stor[idx + sha3((10 * sub_9ca05b6f.length) + ('name', 'sub_9ca05b6f', 8) + 5)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while uint256(allGames[allGames.length].field_1280) > idx:
            uint256(stor[s + sha3((10 * sub_9ca05b6f.length) + ('name', 'sub_9ca05b6f', 8) + 5)].field_0) = uint256(stor[idx + sha3((10 * allGames.length) + ('name', 'allGames', 4) + 5)].field_0)
            s = s + 1
            idx = idx + 1
            continue 
        idx = uint256(allGames[allGames.length].field_1280)
        while uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_1280) > idx:
            uint256(stor[idx + sha3((10 * sub_9ca05b6f.length) + ('name', 'sub_9ca05b6f', 8) + 5)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_1536) = uint256(allGames[allGames.length].field_1536)
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_1792) = uint256(allGames[allGames.length].field_1792)
    uint8(sub_9ca05b6f[sub_9ca05b6f.length].field_2048) = uint8(bool(uint8(allGames[allGames.length].field_2048)))
    Mask(248, 0, sub_9ca05b6f[sub_9ca05b6f.length].field_2056) = address(allGames[allGames.length].field_2056)
    uint256(sub_9ca05b6f[sub_9ca05b6f.length].field_2304) = uint256(allGames[allGames.length].field_2304)
    sub_3384d436++
    sub_1481c673[address(msg.sender)] -= msg.value
    sub_c4c8d851[address(msg.sender)]++
    emit GameAdded(allGames.length, address(arg1), msg.value);
    return allGames.length
}



}
