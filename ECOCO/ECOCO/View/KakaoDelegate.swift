////
////  KakaoDelegate.swift
////  ECOCO
////
////  Created by 김하은 on 2022/07/10.
////
//
//import SwiftUI
//
//import KakaoSDKCommon   // 설치 필요 - info 파일 수정
//import KakaoSDKAuth
//import KakaoSDKUser
//
//
//class KakaoDelegate: ObservableObject {
//    @State var member = UserInfo.init()    // 로그인 관련 init 파일
//    
//    init() {
//        check()
//    }
//    
//    // google userInfo
//    func kakaocheckStatus(){
//        UserApi.shared.me { user, error in
//            if let error = error {
//                print(error)
//            }
//            else {
//                if user?.kakaoAccount?.profile?.nickname != nil {
//                    let user = user?.kakaoAccount?.profile?.nickname!
//                    guard let user = user else { return }
//                    let userName = user
//                    UserDefaults.standard.set(userName, forKey: "UserName")
//                    UserDefaults.standard.set(true, forKey: "isLogin")
//                    print(UserDefaults.standard.string(forKey: "UserName")!)
//                }
//                // UserID 저장
//                UserDefaults.standard.set(user?.id!, forKey: "UserID")
//                
//                WordStorage.shared.getFirebaseDB()
//            }
//        }
//    }
//    
//    func firstLoggin() {
//        UserApi.shared.me { user, error in
//            if let error = error {
//                print(error)
//            }
//            else {
//                if user?.kakaoAccount?.profile?.nickname != nil {
//                    let user = user?.kakaoAccount?.profile?.nickname!
//                    guard let user = user else { return }
//                    let userName = user
//                    UserDefaults.standard.set(userName, forKey: "UserName")
//                    UserDefaults.standard.set(true, forKey: "isLogin")
//                    print(UserDefaults.standard.string(forKey: "UserName")!)
//                }
//                // UserID 저장
//                UserDefaults.standard.set(user?.id!, forKey: "UserID")
//                
//                WordStorage.shared.setBasedWords()
//                WordStorage.shared.getFirebaseDB()
//            }
//        }
//    }
//    
//    func check() {
//        UserApi.shared.accessTokenInfo { [self] (_, error) in
//            if let error = error {
//                if let sdkError = error as? SdkError, sdkError.isInvalidTokenError() == true {
//                    print("로그인 필요")
//                }
//                else {
//                    print("기타 에러")
//                }
//            }
//            else {
//                print("토큰 유효성 체크 성공")
//                kakaocheckStatus()
//            }
//        }
//    }
//    
//    func kakaocheck(){
//        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
//            if let error = error {
//                print(error)
//            }
//            
//            self.firstLoggin()
//        }
//    }
//    
//    // kakao userInfo
//    func setKakaoUserInfo() {
//        UserApi.shared.me() {(user, error) in
//            if let error = error {
//                print(error)
//            }
//            print("me() success.")
//            //do something
//            _ = user
////                self.member.username = (user?.kakaoAccount?.profile?.nickname)!!
//            let userName = user?.kakaoAccount?.profile?.nickname
//            
//            UserDefaults.standard.set(userName, forKey: "UserName")
//        }
//    }
//    
//    func kakaosignIn(){
//        guard ((UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController) != nil else {return}
//        
//        if (UserApi.isKakaoTalkLoginAvailable()) {
//            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
//                if let error = error {
//                    print(error)
//                }
//                else {
//                    print("loginWithKakaoTalk() success.")
//
//                    //do something
//                    _ = oauthToken
//                }
//            }
//        }
//    }
//    
//    func kakaosignout(){
//        UserApi.shared.logout {(error) in
//            if let error = error {
//                print(error)
//            }
//            else {
//                print("logout() success.")
//            }
//        }
//    }
//}
