contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 770]




// =====================  Runtime code  =====================


#
#  - getContributors(uint256 arg1)
#
mapping of uint256 sub_343576f5;
array of address contributors;

function sub_343576f5(?) payable {
    return sub_343576f5[arg1]
}

function contributors(uint256 arg1) payable {
    require arg1 < contributors.length
    return address(contributors[arg1])
}

function getContributorsLength() payable {
    return contributors.length
}

function _fallback() payable {
  stop
}

function sub_ef623207(?) payable {
    if not sub_343576f5[address(msg.sender)]:
        contributors.length++
        if not contributors.length <= contributors.length + 1:
            idx = contributors.length + 1
            while contributors.length > idx:
                uint256(contributors[idx]) = 0
                idx = idx + 1
                continue 
        uint256(contributors[contributors.length]) = msg.sender or Mask(96, 160, uint256(contributors[contributors.length]))
    sub_343576f5[address(msg.sender)] = arg1
    emit 0xab00e469: arg1, msg.sender, arg2
}



}
