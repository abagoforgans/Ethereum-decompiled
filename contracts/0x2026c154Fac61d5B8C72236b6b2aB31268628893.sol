contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 807]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct users;

function users(address arg1) payable {
    return users[arg1].field_0, users[arg1].field_0, users[arg1].field_168
}

function sub_fa287611(?) payable {
    return users[address(arg1)].field_160
}

function _fallback() payable {
  stop
}

function sub_80cd180d(?) payable {
    require msg.sender == stor0
    call arg1 with:
       value 10^15 wei
         gas 0 wei
}

function checkReward(address arg1) payable {
    require msg.sender == stor0
    if users[address(arg1)].field_160 >= 2:
        require msg.sender == stor0
        call arg1 with:
           value 10^15 wei
             gas 0 wei
        users[address(arg1)].field_160 = 0
}

function sub_9f3af7b2(?) payable {
    require msg.sender == stor0
    if not users[address(arg1)].field_168:
        users[address(arg1)].field_0 = arg1
        users[address(arg1)].field_160 = 0
        users[address(arg1)].field_168 = 1
        users[address(arg1)].field_176 = Mask(80, 176, arg1) >> 176
        users[address(arg1)].field_256 = 0
        users[address(arg1)].field_256 = 0
    users[address(arg1)].field_160 = Mask(96, 0, users[address(arg1)].field_160 + 1)
    require msg.sender == stor0
    if users[address(arg1)].field_160 >= 2:
        require msg.sender == stor0
        call arg1 with:
           value 10^15 wei
             gas 0 wei
        users[address(arg1)].field_160 = 0
}



}
