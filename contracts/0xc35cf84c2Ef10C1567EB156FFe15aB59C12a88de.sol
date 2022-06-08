contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 ID;
uint256 iD_control;
uint256 cmd;
uint256 cmd_control;
uint256 depositary_function;
uint256 depositary_function_control;
address user_1Address;
address user_2Address;
address user_3Address;
address user_4Address;
address user_5Address;
address securities_1Address;
address securities_2Address;
address securities_3Address;
address securities_4Address;
address securities_5Address;
uint256 standard_1;
uint256 standard_2;
uint256 standard_3;
uint256 standard_4;
uint256 standard_5;

function getDepositary_function() {
    return depositary_function
}

function Standard_4() {
    return standard_4
}

function Securities_2() {
    return securities_2Address
}

function User_1() {
    return user_1Address
}

function User_2() {
    return user_2Address
}

function getID_control() {
    return iD_control
}

function Standard_1() {
    return standard_1
}

function Securities_1() {
    return securities_1Address
}

function getID() {
    return ID
}

function getCmd() {
    return cmd
}

function User_5() {
    return user_5Address
}

function User_3() {
    return user_3Address
}

function Standard_5() {
    return standard_5
}

function Standard_3() {
    return standard_3
}

function Standard_2() {
    return standard_2
}

function Securities_3() {
    return securities_3Address
}

function getCmd_control() {
    return cmd_control
}

function Securities_5() {
    return securities_5Address
}

function User_4() {
    return user_4Address
}

function Securities_4() {
    return securities_4Address
}

function getDepositary_function_control() {
    return depositary_function_control
}

function _fallback() payable {
    revert
}

function sub_e9aaef3d(?) {
    stor0 = msg.sender
}

function setID(uint256 arg1) {
    require msg.sender == stor0
    ID = arg1
}

function setCmd(uint256 arg1) {
    require msg.sender == stor0
    cmd = arg1
}

function setID_control(uint256 arg1) {
    require msg.sender == stor0
    iD_control = arg1
}

function setCmd_control(uint256 arg1) {
    require msg.sender == stor0
    cmd_control = arg1
}

function setDepositary_function(uint256 arg1) {
    require msg.sender == stor0
    depositary_function = arg1
}

function setDepositary_function_control(uint256 arg1) {
    require msg.sender == stor0
    depositary_function_control = arg1
}

function Eligibility_Group_1(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    user_1Address = arg1
    securities_1Address = arg2
    standard_1 = arg3
}

function Eligibility_Group_5(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    user_5Address = arg1
    securities_5Address = arg2
    standard_5 = arg3
}

function Eligibility_Group_3(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    user_3Address = arg1
    securities_3Address = arg2
    standard_3 = arg3
}

function Eligibility_Group_2(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    user_2Address = arg1
    securities_2Address = arg2
    standard_2 = arg3
}

function Eligibility_Group_4(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    user_4Address = arg1
    securities_4Address = arg2
    standard_4 = arg3
}

function retrait_3() {
    require msg.sender == user_3Address
    require ext_code.size(securities_3Address)
    call securities_3Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_3Address, standard_3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ID == iD_control
    require cmd == cmd_control
    require depositary_function == depositary_function_control
}

function retrait_5() {
    require msg.sender == user_1Address
    require ext_code.size(securities_5Address)
    call securities_5Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_5Address, standard_5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ID == iD_control
    require cmd == cmd_control
    require depositary_function == depositary_function_control
}

function retrait_2() {
    require msg.sender == user_2Address
    require ext_code.size(securities_2Address)
    call securities_2Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_2Address, standard_2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ID == iD_control
    require cmd == cmd_control
    require depositary_function == depositary_function_control
}

function retrait_1() {
    require msg.sender == user_1Address
    require ext_code.size(securities_1Address)
    call securities_1Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_1Address, standard_1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ID == iD_control
    require cmd == cmd_control
    require depositary_function == depositary_function_control
}

function retrait_4() {
    require msg.sender == user_4Address
    require ext_code.size(securities_4Address)
    call securities_4Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_4Address, standard_4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ID == iD_control
    require cmd == cmd_control
    require depositary_function == depositary_function_control
}



}
