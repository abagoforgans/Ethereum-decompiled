contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor4 = 5
    stor5 = 50
    stor6 = 500
    stor7 = 5000
    stor8 = 50000
    stor10 = block.timestamp
    stor11 = block.timestamp
    stor12 = 0
    return code.data[64 len 1342]
}



// =====================  Runtime code  =====================


array of uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of struct userData;
uint256 stor11;
uint256 stor12;

function getUserData(address arg1, uint256 arg2) payable {
    return userData[address(arg1)][arg2].field_0
}

function _fallback() payable {
  stop
}

function sub_a47335d8(?) payable {
    mem[96 len 192] = call.data[4 len 192]
    if block.timestamp - (24 * 3600) > stor11:
        stor12++
    if userData[address(msg.sender)][stor12].field_0 < 5:
        mem[288] = 0
        mem[320 len 160] = 0
        mem[480] = 0
        mem[512 len 160] = 0
        idx = 0
        while idx < 6:
            mem[(32 * idx) + 480] = block.difficulty + block.timestamp + block.hash(block.number + -idx - 1) % 10
            idx = idx + 1
            continue 
        mem[672 len 192] = mem[480 len 192]
        emit 0x5d1e8eac: mem[480 len 192]
        s = 0
        idx = 480
        while 672 > idx:
            stor0[address(msg.sender)][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 6
        while 6 > idx:
            stor0[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < 6:
            mem[0] = msg.sender
            mem[32] = 0
            if mem[(32 * idx) + 96] != stor0[address(msg.sender)][idx]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        stor1[address(msg.sender)] = s
        userData[address(msg.sender)][stor12].field_0++
        if not userData[address(msg.sender)][stor12].field_0 <= userData[address(msg.sender)][stor12].field_0 + 1:
            idx = (14 * userData[address(msg.sender)][stor12].field_0) + 14
            while 14 * userData[address(msg.sender)][stor12].field_0 > idx:
                userData[address(msg.sender)][stor12][idx].field_0 = 0
                s = idx + sha3(sha3(stor12, sha3(address(msg.sender), 9))) + 1
                while idx + sha3(sha3(stor12, sha3(address(msg.sender), 9))) + 7 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                s = idx + sha3(sha3(stor12, sha3(address(msg.sender), 9))) + 7
                while idx + sha3(sha3(stor12, sha3(address(msg.sender), 9))) + 13 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                userData[address(msg.sender)][stor12][idx].field_3328 = 0
                idx = idx + 1
                continue 
        require userData[address(msg.sender)][stor12].field_0 < userData[address(msg.sender)][stor12].field_0
        userData[address(msg.sender)][stor12][userData[address(msg.sender)][stor12].field_0].field_0 = block.timestamp
        require userData[address(msg.sender)][stor12].field_0 < userData[address(msg.sender)][stor12].field_0
        t = (14 * userData[address(msg.sender)][stor12].field_0) + 1
        idx = 96
        while 288 > idx:
            userData[address(msg.sender)][stor12][t].field_0 = mem[idx]
            t = t + 1
            idx = idx + 32
            continue 
        idx = (14 * userData[address(msg.sender)][stor12].field_0) + 7
        while (14 * userData[address(msg.sender)][stor12].field_0) + 7 > idx:
            userData[address(msg.sender)][stor12][idx].field_0 = 0
            idx = idx + 1
            continue 
        require userData[address(msg.sender)][stor12].field_0 < userData[address(msg.sender)][stor12].field_0
        t = (14 * userData[address(msg.sender)][stor12].field_0) + 7
        idx = 0
        while 6 > idx:
            userData[address(msg.sender)][stor12][t].field_0 = stor0[address(msg.sender)][idx]
            t = t + 1
            idx = idx + 1
            continue 
        idx = (14 * userData[address(msg.sender)][stor12].field_0) + 13
        while (14 * userData[address(msg.sender)][stor12].field_0) + 13 > idx:
            userData[address(msg.sender)][stor12][idx].field_0 = 0
            idx = idx + 1
            continue 
        require s < 7
        require userData[address(msg.sender)][stor12].field_0 < userData[address(msg.sender)][stor12].field_0
        userData[address(msg.sender)][stor12][userData[address(msg.sender)][stor12].field_0].field_3328 = stor2[s]
        require s < 7
        call msg.sender with:
           value stor2[s] wei
             gas 0 wei
        emit Game(stor2[s]);
}



}
