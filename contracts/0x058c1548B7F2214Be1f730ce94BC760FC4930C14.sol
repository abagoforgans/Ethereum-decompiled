contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of uint256 stor1;
array of address previousGuesses;
array of uint256 riddle;
array of uint256 answer;
address stor5;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function Answer() {
    return answer[0 len answer.length]
}

function Riddle() {
    return riddle[0 len riddle.length]
}

function PreviousGuesses(uint256 arg1) {
    require arg1 < previousGuesses.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'previousGuesses', 2) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'previousGuesses', 2) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'previousGuesses', 2) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(previousGuesses[arg1].field_0), 
           Array(len=stor[(2 * arg1) + ('name', 'previousGuesses', 2) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'previousGuesses', 2) + 1].length])
}

function _fallback() payable {
  stop
}

function end(string arg1) {
    require msg.sender == stor5
    answer[] = Array(len=arg1.length, data=arg1[all])
    uint8(stor1.length) = 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function play(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require uint8(stor1.length)
    require msg.value >= 33 * 10^16
    require 0 < arg1.length
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    uint256(stor1[]) = Array(len=arg1.length, data=arg1[all])
    previousGuesses.length++
    address(previousGuesses[previousGuesses.length].field_0) = address(stor0)
    if 31 >= stor1.length:
        stor4057[stor2.length] = stor1.length
        idx = 0
        while stor[(2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 31 / 32 > idx:
            stor[idx + sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
            idx = idx + 1
            continue 
    else:
        stor4057[stor2.length] = Mask(255, 1, (256 * not bool(stor1.length)) - 1 and stor1.length) + 1
        if not Mask(255, 1, (256 * not bool(stor1.length)) - 1 and stor1.length):
            idx = 0
            while stor[(2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 31 / 32 > idx:
                stor[idx + sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor1.length + 31 / 32 > idx:
                stor[s + sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = uint256(stor1[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor1.length + 31 / 32
            while stor[(2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 31 / 32 > idx:
                stor[idx + sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == uint256(stor0):
        answer[] = Array(len=arg1.length, data=arg1[all])
        uint8(stor1.length) = 0
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
