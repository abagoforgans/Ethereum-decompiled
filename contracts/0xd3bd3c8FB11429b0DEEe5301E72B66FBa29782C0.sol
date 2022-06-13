contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 deposits;
uint256 openDate;
address owner;

function Owner() {
    return owner
}

function openDate() {
    return openDate
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function _fallback() payable {
  stop
}

function isOwner() {
    if stor0 != msg.sender:
        return 0
    return 1
}

function deposit() payable {
    if msg.value >= 10^18:
        deposits[address(msg.sender)] += msg.value
}

function setup(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    owner = msg.sender
    openDate = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == msg.sender:
        if block.timestamp >= openDate:
            if arg1 <= deposits[address(msg.sender)]:
                if deposits[address(msg.sender)] > 0:
                    call msg.sender with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
