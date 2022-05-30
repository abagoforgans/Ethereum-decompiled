contract main {




// =====================  Runtime code  =====================


const name = Array(len=33, data='Your Timelocked FTV Deluxe Token', 's', Mask(8, -256, 'Your Timelocked FTV Deluxe Token', 's') << 256)

const decimals = 18

const symbol = 'TLFTV'


uint256 totalSupply;
mapping of uint256 balanceOf;
address tokenAddress;
address tokenAssignmentControlAddress;
mapping of uint256 releaseTimes;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenAssignmentControl() {
    return tokenAssignmentControlAddress
}

function releaseTimes(address arg1) {
    return releaseTimes[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function release(address arg1) {
    if block.timestamp <= releaseTimes[address(arg1)]:
        revert with 0, 'release time is not met yet'
    totalSupply -= balanceOf[address(arg1)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
}

function assignBalance(address arg1, uint256 arg2, uint256 arg3) {
    require arg3 > 0
    require msg.sender == tokenAssignmentControlAddress
    require not releaseTimes[address(arg1)]
    totalSupply += arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalSupply <= ext_call.return_data[0]
    releaseTimes[address(arg1)] = arg2
    require arg3 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg3
    emit Transfer(arg3, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if arg1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'you can only send to self to unlock the tokens to the real FTV coin'
    if block.timestamp <= releaseTimes[address(msg.sender)]:
        revert with 0, 'release time is not met yet'
    totalSupply -= balanceOf[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    return 1
}



}
