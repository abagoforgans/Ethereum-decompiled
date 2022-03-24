contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = 0
    stor3 = block.number
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[45 len 743]
}



// =====================  Runtime code  =====================


mapping of address sub_2591ef89;
mapping of uint256 sub_8449bb85;
uint256 stor2;
uint256 stor3;
address stor4;

function sub_2591ef89(?) payable {
    return address(sub_2591ef89[arg1])
}

function sub_8449bb85(?) payable {
    return sub_8449bb85[arg1]
}

function sub_6c87de13(?) payable {
    if stor4 == msg.sender:
        stor2 = 0
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_0e32a504(?) payable {
    if block.number <= stor3:
        emit 0x66dd31ed: block.number, stor3
    else:
        idx = 0
        s = 0
        while idx < stor2:
            mem[0] = idx
            mem[32] = 1
            idx = idx + 1
            s = (sub_8449bb85[idx] / 10^15) + s
            continue 
        idx = 0
        s = 0
        while idx < stor2:
            mem[0] = idx
            mem[32] = 1
            if (sub_8449bb85[idx] / 10^15) + s < block.timestamp * block.hash(block.number - 1) % stor[_10] / 10^15 * stor2:
                idx = idx + 1
                s = (sub_8449bb85[idx] / 10^15) + s
                continue 
            emit announceWinner(address(sub_2591ef89[idx]), eth.balance(this.address));
            call address(sub_2591ef89[idx]) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            stor2 = 0
        emit announceWinner(address(sub_2591ef89), eth.balance(this.address));
        call address(sub_2591ef89) with:
           value eth.balance(this.address) wei
             gas 0 wei
        stor2 = 0
}

function _fallback() payable {
    uint256(sub_2591ef89[stor2]) = msg.sender or Mask(96, 160, uint256(sub_2591ef89[stor2]))
    sub_8449bb85[stor2] = msg.value
    stor2++
    if stor2 + 1 >= 2:
        if block.number <= stor3:
            emit 0x66dd31ed: block.number, stor3
        else:
            idx = 0
            s = 0
            while idx < stor2:
                mem[0] = idx
                mem[32] = 1
                idx = idx + 1
                s = (sub_8449bb85[idx] / 10^15) + s
                continue 
            idx = 0
            s = 0
            while idx < stor2:
                mem[0] = idx
                mem[32] = 1
                if (sub_8449bb85[idx] / 10^15) + s < block.timestamp * block.hash(block.number - 1) % stor[_12] / 10^15 * stor2:
                    idx = idx + 1
                    s = (sub_8449bb85[idx] / 10^15) + s
                    continue 
                emit announceWinner(address(sub_2591ef89[idx]), eth.balance(this.address));
                call address(sub_2591ef89[idx]) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                stor2 = 0
            emit announceWinner(address(sub_2591ef89), eth.balance(this.address));
            call address(sub_2591ef89) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            stor2 = 0
}



}
