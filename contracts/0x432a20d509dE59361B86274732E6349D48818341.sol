contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 612]




// =====================  Runtime code  =====================


mapping of struct winningOutcome;

function getWinningOutcome(uint256 arg1) payable {
    return winningOutcome[arg1].field_0
}

function _fallback() payable {
  stop
}

function sub_fbd40121(?) payable {
    emit Log((arg1 + (100 * 10^18 * arg2) + (10000000000000000000000 * 10^18 * arg3)));
    if block.number >= arg1:
        if not winningOutcome[arg1 + (100 * 10^18 * arg2) + (10000000000000000000000 * 10^18 * arg3)].field_0:
            if block.difficulty >= arg2:
                if block.difficulty <= arg3:
                    winningOutcome[arg1 + (100 * 10^18 * arg2) + (10000000000000000000000 * 10^18 * arg3)].field_0 = (10000 * block.difficulty) - (10000 * arg2) / uint64(arg3 - arg2) or Mask(240, 16, winningOutcome[arg1 + (100 * 10^18 * arg2) + (10000000000000000000000 * 10^18 * arg3)].field_0)
                else:
                    winningOutcome[arg1 + (100 * 10^18 * arg2) + (10000000000000000000000 * 10^18 * arg3)].field_0 = 10001
            else:
                winningOutcome[arg1 + (100 * 10^18 * arg2) + (10000000000000000000000 * 10^18 * arg3)].field_0 = 1
                winningOutcome[arg1 + (100 * 10^18 * arg2) + (10000000000000000000000 * 10^18 * arg3)].field_8 = 0
}



}
