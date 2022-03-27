contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
uint8 stor1; offset 192
uint32 stor1; offset 168
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor2 = msg.sender
    stor3 = msg.sender
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
        stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
    else:
        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
            stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
        else:
            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1.field_0))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 50 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require stor2 == msg.sender
    stor5 = 990
    stor7 = 100000
    stor6 = stor7 * stor4 / 10^6
    if stor7 * stor4 / 10^6 > stor8 + 1:
        uint8(stor1.field_160) = 0
    else:
        uint8(stor1.field_160) = 1
    require stor2 == msg.sender
    stor8 = 10^17
    stor1.field_168 % 16777216 = 250000
    uint8(stor1.field_192) = 0
    return code.data[986 len 6853]
}



// =====================  Runtime code  =====================


const maxBetDivisor = 10^6

const maxNumber = 99

const minNumber = 2

const houseEdgeDivisor = 1000


address stor0;
uint8 stor1; offset 160
uint32 stor1;
uint32 gasForOraclize; offset 168
address stor1;
uint256 stor1;
uint8 stor2; offset 160
address owner;
address treasuryAddress;
uint256 contractBalance;
uint256 houseEdge;
uint256 maxBet;
uint256 sub_9e4becee;
uint256 minBet;
uint256 totalBets;
uint256 maxPendingPayouts;
mapping of uint64 stor11;
mapping of struct stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;
mapping of uint256 stor16;
mapping of uint256 stor17;
mapping of uint256 stor18;
mapping of uint256 playerGetPendingTxBy;
mapping of uint256 stor20;
mapping of uint256 stor21;

function maxBet() {
    return maxBet
}

function payoutsPaused() {
    return bool(stor2)
}

function playerGetPendingTxByAddress(address arg1) {
    return playerGetPendingTxBy[address(arg1)]
}

function treasury() {
    return treasuryAddress
}

function gasForOraclize() {
    return gasForOraclize
}

function contractBalance() {
    return contractBalance
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function sub_9e4becee(?) {
    return sub_9e4becee
}

function totalBets() {
    return totalBets
}

function gamePaused() {
    return bool(uint8(stor1.field_160))
}

function houseEdge() {
    return houseEdge
}

function maxPendingPayouts() {
    return maxPendingPayouts
}

function ownerkill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function ownerSetMinBet(uint256 arg1) {
    require owner == msg.sender
    minBet = arg1
}

function ownerChangeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function ownerSetHouseEdge(uint256 arg1) {
    require owner == msg.sender
    houseEdge = arg1
}

function ownerPausePayouts(bool arg1) {
    require owner == msg.sender
    stor2 = uint8(arg1)
}

function ownerSetTreasury(address arg1) {
    require owner == msg.sender
    treasuryAddress = arg1
}

function ownerSetOraclizeSafeGas(uint32 arg1) {
    require owner == msg.sender
    gasForOraclize = arg1
}

function ownerPauseGame(bool arg1) {
    require owner == msg.sender
    uint8(stor1.field_160) = uint8(arg1)
}

function sub_1afeefb1(?) {
    require owner == msg.sender
    require arg1 <= 100000
    sub_9e4becee = arg1
    maxBet = sub_9e4becee * contractBalance / 10^6
    if sub_9e4becee * contractBalance / 10^6 > minBet + 1:
        uint8(stor1.field_160) = 0
    else:
        uint8(stor1.field_160) = 1
}

function playerWithdrawPendingTransactions() {
    require bool(stor2) != 1
    playerGetPendingTxBy[address(msg.sender)] = 0
    call msg.sender with:
       value playerGetPendingTxBy[address(msg.sender)] wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        return 0
    return 1
}

function ownerRefundPlayer(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require arg3 <= maxPendingPayouts
    maxPendingPayouts -= arg3
    call arg2 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefund(arg1, arg2, arg4);
}

function _fallback() payable {
    require treasuryAddress == msg.sender
    require contractBalance + msg.value >= contractBalance
    contractBalance += msg.value
    maxBet = sub_9e4becee * contractBalance / 10^6
    if sub_9e4becee * contractBalance / 10^6 > minBet + 1:
        uint8(stor1.field_160) = 0
    else:
        uint8(stor1.field_160) = 1
}

function ownerTransferEther(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= contractBalance
    contractBalance -= arg2
    maxBet = sub_9e4becee * contractBalance / 10^6
    if sub_9e4becee * contractBalance / 10^6 > minBet + 1:
        uint8(stor1.field_160) = 0
    else:
        uint8(stor1.field_160) = 1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogOwnerTransfer(arg1, arg2);
}

function playerRollDice(uint256 arg1) payable {
    require bool(uint8(stor1.field_160)) != 1
    require msg.value <= maxBet
    require msg.value >= minBet
    require arg1 >= 2
    require arg1 <= 99
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1.field_0))
    mem[740] = mem[766 len 6]
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args Array(len=6, data=mem[740]), uint32(stor1.field_0)
    require ext_call.success
    if ext_call.return_data[0] > (gasForOraclize * block.gasprice) + 10^18:
        totalBets++
        stor13[0] = 0
        stor18[0] = arg1
        stor14[0] = msg.value
        address(stor11[0]) = msg.sender
        require 1 <= arg1
        require arg1 - 1
        stor20[0] = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value
        require maxPendingPayouts + (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value >= maxPendingPayouts
        maxPendingPayouts = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts
        require (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts < contractBalance
        require stor14[0] + stor20[0] >= stor14[0]
        emit LogBet(stor20[0], stor14[0], stor18[0], stor13[0], address(stor11[0]), stor20[0] + stor14[0]);
    else:
        mem[804] = mem[830 len 6]
        mem[1284] = mem[1312 len 4]
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 128, 192, uint32(stor1.field_0), 6, mem[804], 420, 0x565b55524c5d205b276a736f6e2868747470733a2f2f6170692e72616e646f6d2e6f72672f6a736f6e2d7270632f312f696e766f6b65292e726573756c742e72616e646f6d2e646174612e30272c20275c6e7b226a736f6e727063223a22322e30222c226d6574686f64223a2267656e65726174655369676e6564496e746567657273222c22706172616d73223a7b226170694b6579223a247b5b646563727970745d204242644e516a6f4652744f2f4f642f384e6d50742b72644d6a4c695241636952762b4e7876493576746953536763725546543976783633366930786574544735527179317457746e473455617737477556656233484459486f53325758465942706f4b2b58715851497a6351777a676979486a79474e2b796c3169613538316b583066596238464c4f634647497652747836616173382b6d6658704746766b3d7d2c226e223a312c226d696e223a312c226d6178223a3130302c227265706c6163656d656e74223a747275652c2262617365223a3130247b5b6964656e746974795d20227d227d2c226964223a31247b5b6964656e746974795d2022, mem[1284]
        require ext_call.success
        totalBets++
        stor13[ext_call.return_data[0]] = ext_call.return_data[0]
        stor18[ext_call.return_data[0]] = arg1
        stor14[ext_call.return_data[0]] = msg.value
        address(stor11[ext_call.return_data[0]]) = msg.sender
        require 1 <= arg1
        require arg1 - 1
        stor20[ext_call.return_data[0]] = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value
        require maxPendingPayouts + (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value >= maxPendingPayouts
        maxPendingPayouts = (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts
        require (((101 * msg.value) - (arg1 * msg.value) / arg1 - 1 * houseEdge) + (msg.value * houseEdge) / 1000) - msg.value + maxPendingPayouts < contractBalance
        require stor14[ext_call.return_data[0]] + stor20[ext_call.return_data[0]] >= stor14[ext_call.return_data[0]]
        emit LogBet(stor20[ext_call.return_data[0]], stor14[ext_call.return_data[0]], stor18[ext_call.return_data[0]], stor13[ext_call.return_data[0]], address(stor11[ext_call.return_data[0]]), stor20[ext_call.return_data[0]] + stor14[ext_call.return_data[0]]);
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1.field_0))
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require bool(stor2) != 1
    mem[0] = arg1
    mem[32] = 11
    require address(stor11[arg1])
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = mem[idx + 128 len 1] + (10 * s) - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    stor16[arg1] = s
    stor17[arg1] = (sha3(s, arg3[all]) % 99) + 1
    stor12[arg1].field_0 = uint64(stor11[arg1])
    stor12[arg1].field_64 = 0
    address(stor11[arg1]) = 0
    stor21[arg1] = stor20[arg1]
    stor20[arg1] = 0
    require stor21[arg1] <= maxPendingPayouts
    maxPendingPayouts -= stor21[arg1]
    stor15[arg1] = stor14[arg1]
    stor14[arg1] = 0
    if not stor17[arg1]:
        emit code.data[6821 len 32]: stor17[arg1], stor15[arg1], 3, Array(len=arg3.length, data=arg3[all]), stor13[arg1], stor12[arg1].field_0, stor18[arg1]
        call stor12[arg1].field_0 with:
           value stor15[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit code.data[6821 len 32]: stor17[arg1], stor15[arg1], 4, Array(len=arg3.length, data=arg3[all]), stor13[arg1], stor12[arg1].field_0, stor18[arg1]
            require playerGetPendingTxBy[stor12[arg1].field_0] + stor15[arg1] >= playerGetPendingTxBy[stor12[arg1].field_0]
            playerGetPendingTxBy[stor12[arg1].field_0] += stor15[arg1]
    else:
        if stor17[arg1] < stor18[arg1]:
            require stor21[arg1] <= contractBalance
            contractBalance -= stor21[arg1]
            require stor21[arg1] + stor15[arg1] >= stor21[arg1]
            stor21[arg1] += stor15[arg1]
            emit code.data[6821 len 32]: stor17[arg1], stor15[arg1] + stor21[arg1], 1, Array(len=arg3.length, data=arg3[all]), stor13[arg1], stor12[arg1].field_0, stor18[arg1]
            maxBet = sub_9e4becee * contractBalance / 10^6
            if sub_9e4becee * contractBalance / 10^6 > minBet + 1:
                uint8(stor1.field_160) = 0
            else:
                uint8(stor1.field_160) = 1
            call stor12[arg1].field_0 with:
               value stor21[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit code.data[6821 len 32]: stor17[arg1], stor21[arg1], 2, Array(len=arg3.length, data=arg3[all]), stor13[arg1], stor12[arg1].field_0, stor18[arg1]
                require playerGetPendingTxBy[stor12[arg1].field_0] + stor21[arg1] >= playerGetPendingTxBy[stor12[arg1].field_0]
                playerGetPendingTxBy[stor12[arg1].field_0] += stor21[arg1]
        else:
            if stor17[arg1] >= stor18[arg1]:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len arg3.length] = arg3[all]
                if not arg3.length % 32:
                    emit code.data[6821 len 32]: stor17[arg1], stor15[arg1], 0, 128, arg3.length, arg3[all], stor13[arg1], stor12[arg1].field_0, stor18[arg1]
                else:
                    mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                    emit code.data[6821 len 32]: stor17[arg1], stor15[arg1], 0, 128, arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 352 len -(arg3.length % 32) + 32], stor13[arg1], stor12[arg1].field_0, stor18[arg1]
                require contractBalance + stor15[arg1] - 1 >= contractBalance
                contractBalance = stor15[arg1] + contractBalance - 1
                maxBet = sub_9e4becee * contractBalance / 10^6
                if sub_9e4becee * contractBalance / 10^6 > minBet + 1:
                    uint8(stor1.field_160) = 0
                else:
                    uint8(stor1.field_160) = 1
                call stor12[arg1].field_0 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    require playerGetPendingTxBy[stor12[arg1].field_0] + 1 >= playerGetPendingTxBy[stor12[arg1].field_0]
                    playerGetPendingTxBy[stor12[arg1].field_0]++
}



}
