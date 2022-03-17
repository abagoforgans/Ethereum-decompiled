contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 8733]




// =====================  Runtime code  =====================


#
#  - initialize(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#
array of address winner;
array of address auction;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor31;

function getWinnerAddress(uint256 arg1) payable {
    require arg1 < 8
    return address(winner[arg1])
}

function getAuctionAddress(uint256 arg1) payable {
    require arg1 < 8
    return auction[arg1]
}

function _fallback() payable {
  stop
}

function getWinnerUrl(uint256 arg1) payable {
    require arg1 < 8
    if stor[arg1]:
        mem[160] = stor[sha3(arg1)]
        idx = 160
        s = 0
        while stor[arg1] + 128 > idx:
            mem[idx + 32] = stor[s + sha3(arg1) + 1]
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor[arg1], data=mem[160 len stor[arg1]])
}

function acceptAuctionResult(address arg1, uint256 arg2, string arg3) payable {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    idx = 0
    while idx < 8:
        if auction[idx] != msg.sender:
            idx = idx + 1
            continue 
        if arg1 != 0:
            require idx < 8
            stor[idx] = arg3.length
            if not arg3.length:
                s = sha3(idx)
                while sha3(idx) + (stor[idx] + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                t = sha3(idx)
                s = 128
                while arg3.length + 128 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(idx) + (Mask(251, 0, arg3.length + 31) >> 5)
                while sha3(idx) + (stor[idx] + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require idx < 8
            uint256(winner[idx]) = arg1 or Mask(96, 160, uint256(winner[idx]))
        if idx >= 4:
            call msg.sender.initialize(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining - 25050 wei
                args address(this.address), stor25, stor26, stor31, idx - 3
        else:
            call msg.sender.initialize(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining - 25050 wei
                args address(this.address), stor27, stor28, stor29, idx
        require ext_call.success
        return 1
    return 0
}



}
