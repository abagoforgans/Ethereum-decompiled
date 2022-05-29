contract main {




// =====================  Runtime code  =====================


mapping of uint256 myEarnings;

function myEarnings() {
    require 0 < myEarnings[msg.sender]
    return myEarnings[msg.sender]
}

function _fallback() payable {
    revert
}

function deposit() payable {
    require myEarnings[msg.sender] + msg.value >= myEarnings[msg.sender]
    myEarnings[msg.sender] += msg.value
    return (msg.value + myEarnings[msg.sender])
}

function withdraw() {
    require 0 < myEarnings[msg.sender]
    myEarnings[msg.sender] = 0
    call msg.sender with:
       value myEarnings[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
