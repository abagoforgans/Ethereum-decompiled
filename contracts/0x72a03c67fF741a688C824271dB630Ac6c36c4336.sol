contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sinistre;
uint256 sinistre_effectif;
uint256 realisation;
uint256 realisation_effective;
uint256 ouverture_des_droits;
uint256 ouverture_effective;
address user_1Address;
address user_2Address;
address user_3Address;
address user_4Address;
address user_5Address;
address police_1Address;
address police_2Address;
address police_3Address;
address police_4Address;
address police_5Address;
uint256 standard_1;
uint256 standard_2;
uint256 standard_3;
uint256 standard_4;
uint256 standard_5;

function Police_5() {
    return police_5Address
}

function getOuverture_des_droits() {
    return ouverture_des_droits
}

function getRealisation() {
    return realisation
}

function Standard_4() {
    return standard_4
}

function Police_3() {
    return police_3Address
}

function User_1() {
    return user_1Address
}

function getSinistre() {
    return sinistre
}

function User_2() {
    return user_2Address
}

function Standard_1() {
    return standard_1
}

function Police_4() {
    return police_4Address
}

function getOuverture_effective() {
    return ouverture_effective
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

function Police_2() {
    return police_2Address
}

function getRealisation_effective() {
    return realisation_effective
}

function Police_1() {
    return police_1Address
}

function Standard_2() {
    return standard_2
}

function User_4() {
    return user_4Address
}

function getSinistre_effectif() {
    return sinistre_effectif
}

function _fallback() payable {
    revert
}

function setSinistre(uint256 arg1) {
    require msg.sender == stor0
    sinistre = arg1
}

function setRealisation(uint256 arg1) {
    require msg.sender == stor0
    realisation = arg1
}

function setSinistre_effectif(uint256 arg1) {
    require msg.sender == stor0
    sinistre_effectif = arg1
}

function setOuverture_effective(uint256 arg1) {
    require msg.sender == stor0
    ouverture_effective = arg1
}

function setOuverture_des_droits(uint256 arg1) {
    require msg.sender == stor0
    ouverture_des_droits = arg1
}

function setRealisation_effective(uint256 arg1) {
    require msg.sender == stor0
    realisation_effective = arg1
}

function sub_3d01afcd(?) {
    require msg.sender == stor0
    user_2Address = arg1
    police_2Address = arg2
    standard_2 = arg3
}

function sub_498ef2a2(?) {
    require msg.sender == stor0
    user_4Address = arg1
    police_4Address = arg2
    standard_4 = arg3
}

function sub_59f0c4ac(?) {
    require msg.sender == stor0
    user_5Address = arg1
    police_5Address = arg2
    standard_5 = arg3
}

function sub_ec8c9975(?) {
    require msg.sender == stor0
    user_3Address = arg1
    police_3Address = arg2
    standard_3 = arg3
}

function sub_f2410bfc(?) {
    require msg.sender == stor0
    user_1Address = arg1
    police_1Address = arg2
    standard_1 = arg3
}

function Indemnisation_1() {
    require msg.sender == user_1Address
    require ext_code.size(police_1Address)
    call police_1Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_1Address, standard_1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sinistre == sinistre_effectif
    require realisation == realisation_effective
    require ouverture_des_droits == ouverture_effective
}

function Indemnisation_4() {
    require msg.sender == user_4Address
    require ext_code.size(police_4Address)
    call police_4Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_1Address, standard_4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sinistre == sinistre_effectif
    require realisation == realisation_effective
    require ouverture_des_droits == ouverture_effective
}

function Indemnisation_2() {
    require msg.sender == user_2Address
    require ext_code.size(police_2Address)
    call police_2Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_1Address, standard_2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sinistre == sinistre_effectif
    require realisation == realisation_effective
    require ouverture_des_droits == ouverture_effective
}

function Indemnisation_5() {
    require msg.sender == user_5Address
    require ext_code.size(police_5Address)
    call police_5Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_1Address, standard_5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sinistre == sinistre_effectif
    require realisation == realisation_effective
    require ouverture_des_droits == ouverture_effective
}

function Indemnisation_3() {
    require msg.sender == user_3Address
    require ext_code.size(police_3Address)
    call police_3Address.0xa9059cbb with:
         gas gas_remaining wei
        args user_1Address, standard_3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sinistre == sinistre_effectif
    require realisation == realisation_effective
    require ouverture_des_droits == ouverture_effective
}



}
