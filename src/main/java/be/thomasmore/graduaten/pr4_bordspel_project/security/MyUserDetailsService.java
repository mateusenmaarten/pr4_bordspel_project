package be.thomasmore.graduaten.pr4_bordspel_project.security;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker;
import be.thomasmore.graduaten.pr4_bordspel_project.repository.GebruikerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MyUserDetailsService implements UserDetailsService
{
    @Autowired
    GebruikerRepository gebruikerRepository;

    @Override
    public UserDetails loadUserByUsername(String eMail) throws UsernameNotFoundException {
        Optional<Gebruiker> gebruiker = gebruikerRepository.findByEmail(eMail);

       gebruiker.orElseThrow(() -> new UsernameNotFoundException("Email of wachtwoord is fout"));

       return gebruiker.map(MyUserDetails::new).get();
    }
}
