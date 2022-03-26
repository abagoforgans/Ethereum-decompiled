contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1718]




// =====================  Runtime code  =====================


array of address owners;
address lastowner;
uint256 stor1;

function owners(uint256 arg1) payable {
    require arg1 < owners.length
    return address(owners[arg1])
}

function lastowner() payable {
    return address(lastowner)
}

function _delete_() payable {
    require 0 < owners.length
    if address(owners) != msg.sender:
    selfdestruct(address(lastowner))
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function withdraw_all() payable {
    require msg.value >= 2500 * 10^18
    if msg.sender == address(lastowner):
    require 0 < owners.length
    require msg.sender == address(owners)
}

function withdraw_a_bit(uint256 arg1) payable {
    require msg.value >= 2500 * 10^18
    if msg.sender == address(lastowner):
    require 0 < owners.length
    require msg.sender == address(owners)
}

function testwallet8() payable {
    owners.length++
    if not owners.length <= owners.length + 1:
        idx = owners.length + 1
        while owners.length > idx:
            uint256(owners[idx]) = 0
            idx = idx + 1
            continue 
    uint256(owners[owners.length]) = msg.sender or Mask(96, 160, uint256(owners[owners.length]))
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}

function add_another_owner(address arg1) payable {
    require 0 < owners.length
    if msg.sender == address(owners):
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        uint256(owners[owners.length]) = arg1 or Mask(96, 160, uint256(owners[owners.length]))
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    else:
        if msg.sender == address(lastowner):
            owners.length++
            if not owners.length <= owners.length + 1:
                idx = owners.length + 1
                while owners.length > idx:
                    uint256(owners[idx]) = 0
                    idx = idx + 1
                    continue 
            uint256(owners[owners.length]) = arg1 or Mask(96, 160, uint256(owners[owners.length]))
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}



}
