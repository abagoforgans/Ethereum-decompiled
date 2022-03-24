contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor99;

function _fallback() payable {
    stor2.length = 1
    if not stor2.length <= 1:
        idx = 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor2.length
    stor2 = 0
    stor[code.data[773 len 32]][msg.sender]++
    if not stor[code.data[773 len 32]][msg.sender] <= stor[code.data[773 len 32]][msg.sender] + 1:
        idx = stor[code.data[773 len 32]][address(msg.sender)] + 1
        while stor[code.data[773 len 32]][msg.sender] > idx:
            stor[code.data[773 len 32]][msg.sender][idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor[code.data[773 len 32]][msg.sender]
    stor[code.data[773 len 32]][msg.sender] = stor2
    stor1[0][address(msg.sender)][0] = stor2
    stor2 = 2
    return code.data[365 len 408]
}



// =====================  Runtime code  =====================


array of uint256 tickets;
mapping of uint256 sub_3e367aa1;
array of uint256 sub_69e1fd3a;

function sub_3e367aa1(?) payable {
    return sub_3e367aa1[arg1][arg2][arg3]
}

function sub_69e1fd3a(?) payable {
    require arg1 < sub_69e1fd3a.length
    return sub_69e1fd3a[arg1]
}

function tickets(uint256 arg1, address arg2, uint256 arg3) payable {
    require arg3 < tickets[arg1][arg2]
    return tickets[arg1][arg2][arg3]
}

function _fallback() payable {
  stop
}

function f2() payable {
    require 0 < sub_69e1fd3a.length
    sub_69e1fd3a = 2001
}

function f1() payable {
    require 0 < tickets[0][address(msg.sender)]
    tickets[0][address(msg.sender)] = 1001
}



}
